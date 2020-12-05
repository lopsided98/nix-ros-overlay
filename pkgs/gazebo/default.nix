{ lib, mkDerivation, fetchurl, fetchpatch, cmake, pkgconfig, ronn, libGL
, openal, hdf5, curl, tinyxml, tinyxml-2, libtar, gts, libusb, qtbase, gdal
, libuuid, graphviz, qwt6, freeimage, boost, protobuf, sdformat, tbb, ogre1_10
, ffmpeg, ignition, ignition-cmake ? ignition.cmake0
, ignition-common ? ignition.common, ignition-math ? ignition.math4
, ignition-transport ? ignition.transport, ignition-msgs ? ignition.msgs
, ignition-fuel-tools ? ignition.fuel-tools

, bullet, withBulletEngineSupport ? false
, version ? "11.3.0"
, srcSha256 ? "1x4200vjxvlkns0knq1k8ms5lqlvpnz5qqx2gb2mc4l4l532jih9"
, ... }: with lib;

mkDerivation rec {
  pname = "gazebo";
  inherit version;

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    sha256 = srcSha256;
  };

  enableParallelBuilding = true;

  cmakeFlags = [ "-DUSE_HOST_CFLAGS=False" ];

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
    libusb
    qtbase
    gdal
    libuuid
    graphviz
    ignition-cmake
    ignition-common
    qwt6
  ] ++ optional withBulletEngineSupport bullet;

  propagatedBuildInputs = [
    freeimage
    boost
    protobuf
    sdformat
    tbb
    ogre1_10
    ffmpeg
    ignition-math
    ignition-transport
    ignition-msgs
    ignition-fuel-tools
  ];

  meta = {
    homepage = "http://gazebosim.org/";
    description = "Multi-robot simulator for outdoor environments";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
