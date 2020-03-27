{ lib, clangStdenv, fetchurl, fetchFromGitHub, libusb1, jdk, python3, doxygen
, libGLU, xorg, freeglut }:

let
  libopenni2_pc = fetchurl {
    url = "https://salsa.debian.org/multimedia-team/openni2/raw/8491921c14b8c41850f0e0b0493e195cb53a71a3/debian/libopenni2.pc";
    sha256 = "1023s3j71m56fnvqmai4683ds4fbm92dhf1s8csdrdn88a726ygm";
  };
in clangStdenv.mkDerivation rec {
  pname = "openni2";
  version = "2.2.0.33";

  src = fetchFromGitHub {
    owner = "OpenNI";
    repo = "OpenNI2";
    rev = "ca2cdcf39d49332fa9462188a952ff9953e9e1d9";
    sha256 = "0mfnyzpq53wnzgjfx91xcbx0nrl0lp1vrk1rk20a3gb3kshsr675";
  };

  nativeBuildInputs = [ jdk python3 doxygen ];
  buildInputs = [ libusb1 libGLU xorg.libX11 freeglut ];

  outputs = [ "out" "doc" ];

  postPatch = ''
    patchShebangs Source
    patchShebangs Packaging

    sed -e "s/cmd = \[javaDocExe, '-d', 'java'\]/cmd = [javaDocExe, '-d', 'java', '-Xdoclint:none']/" \
      -i Source/Documentation/Runme.py
    sed -e "s%/etc/udev/rules.d/%$out/etc/udev/rules.d/%" \
      -e s%exit%% \
      -i Packaging/Linux/install.sh
  '';

  makeFlags = [ "CFG=Release" "ALLOW_WARNINGS=1" ];

  postBuild = ''
    make doc
  '';

  installPhase = ''
    install -d -m755 "$out/"{etc,bin,include,lib/OpenNI2/Drivers}

    cp -r Config "$out/etc/OpenNI2"

    cp -r Include "$out/include/openni2"

    pushd Bin/*-Release
    install *.so "$out/lib"
    find . -type f -executable -exec install {} "$out/bin" \;
    install OpenNI2/Drivers/*.so "$out/lib/OpenNI2/Drivers"
    popd

    install -d -m755 "$out/etc/udev/rules.d"
    Packaging/Linux/install.sh

    install -d -m755 "$out/lib/pkgconfig"
    cp "${libopenni2_pc}" "$out/lib/pkgconfig/libopenni2.pc"
    sed -i "s%^prefix=.*%prefix=$out%" "$out/lib/pkgconfig/libopenni2.pc"

    install -d -m755 "$doc/share/doc"
    cp -r Source/Documentation/html "$doc/share/doc/OpenNI2"
  '';

  meta = with lib; {
    description = "Open source SDK used for developing 3D sensing middleware libraries and applications";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
  };
}
