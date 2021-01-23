{ stdenv, lib, fetchFromGitHub, perl, bison, flex }:

let
  target = {
    "armv6l-linux" = "armv6l.linux";
    "armv7l-linux" = "armv7l.linux";
    "aarch64-linux" = "armv8.linux";
    "x86_64-linux" = "x86_64.linux";
  }.${stdenv.hostPlatform.system} or (throw "Unsupported platform");
in stdenv.mkDerivation rec {
  pname = "opensplice";
  version = "6.9.190925";

  src = fetchFromGitHub {
    owner = "ADLINK-IST";
    repo = pname;
    rev = "OSPL_V${lib.replaceStrings ["."] ["_"] version}OSS_RELEASE";
    sha256 = "1q8m6k6jk66n0s5g9c058l39j02n0jl1prxbh37c1g5lh4ajg4rd";
  };

  postPatch = ''
    patchShebangs \
      configure \
      src/services/ddsi2e/sanitize.sh \
      install/make_*
    sed -i "s#/usr/bin/ar#$AR#" setup/*-default.mak
  '';

  nativeBuildInputs = [ perl bison flex ];

  configurePhase = ''
    runHook preConfigure
    . configure ${target}-release
    runHook postConfigure
  '';
  
  postInstall = ''
    cp -aT 'install/RTS/${target}' "$out"
  '';

  meta = with lib; {
    description = "Vortex OpenSplice Community Edition";
    longDescription = ''
      Vortex OpenSplice is a full implementaiton of the OMG DDS Standard
      licensed under Apache 2. The DDS standard is used today across a large
      range of application domains ranging from autonomous vehicles, medical
      devices, robotic platforms, software defined networking, network
      switches, IoT Gateways, military and aerospace systems, Air Traffic
      Control and Management, smart grids, smart farms, etc.
    '';
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = [ "armv6l-linux" "armv7l-linux" "aarch64-linux" "x86_64-linux" ];
  };
}
