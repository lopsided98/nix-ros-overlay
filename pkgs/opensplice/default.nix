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
  version = "6.9.210323";

  src = fetchFromGitHub {
    owner = "ADLINK-IST";
    repo = pname;
    rev = "OSPL_V${lib.replaceStrings ["."] ["_"] version}OSS_RELEASE";
    sha256 = "0zg1gcrxkgp20yd7dil30qrm6w58jvn9x106rvsfs8q1vaafg5f7";
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
    description = "Open-source OMG DDS (Data Distribution Service for Real-Time Systems) implementation";
    longDescription = ''
      Vortex OpenSplice is a full implementation of the OMG DDS Standard
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
