{ lib, stdenv, fetchurl, fetchpatch, cmake, pkgconfig, ronn, libGL, openal, hdf5
, curl, tinyxml, tinyxml-2, libtar, gts, libusb1, qt4, gdal, libuuid, graphviz
, freeimage, ffmpeg, tbb, boost, protobuf, sdformat_4, ogre1_9, ignition

, bullet, withBulletEngineSupport ? false
}: with lib;

stdenv.mkDerivation rec {
  pname = "gazebo";
  version = "7.16.1";

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    sha256 = "0xb6lrrwv9q279vanvj91ksyra9j26sgkcb2is2fys37f0v2f9hq";
  };

  patches = [
    # Fix CMake relative path assumptions (https://github.com/osrf/gazebo/pull/2780)
    (fetchpatch {
      url = "https://github.com/osrf/gazebo/commit/dd21431c1c158a1375527c585369f1862d4e8a4e.patch";
      sha256 = "0qjlijvavbrp0mc7bslc0r70l585b2dk3md3g4jgwfkarrbzd1yf";
    })
  ];

  enableParallelBuilding = true;

  cmakeFlags = [
    "-DCMAKE_INSTALL_LIBDIR=lib"
    "-DCMAKE_INSTALL_INCLUDEDIR=include"
    "-DUSE_HOST_CFLAGS=False"
    "-DENABLE_TESTS_COMPILATION=False"
  ];

  nativeBuildInputs = [ cmake pkgconfig ronn ];

  buildInputs = [
    libGL
    openal
    hdf5
    curl
    tinyxml
    tinyxml-2
    libtar
    gts
    libusb1
    qt4
    gdal
    libuuid
    graphviz
    ignition.transport2
  ] ++ optional withBulletEngineSupport bullet;

  propagatedBuildInputs = [
    freeimage
    ffmpeg
    tbb
    boost
    protobuf
    sdformat_4
    ogre1_9
    ignition.math2
  ];

  meta = {
    homepage = "http://gazebosim.org/";
    description = "Multi-robot simulator for outdoor environments";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.unix;
  };
}
