{ lib, mkDerivation, fetchurl, fetchpatch, cmake, pkgconfig, ronn, libGL
, openal, hdf5, curl, tinyxml, tinyxml-2, libtar, gts, libusb, qtbase, gdal
, libuuid, graphviz, qwt6, freeimage, boost, protobuf, sdformat, tbb, ogre1_10
, ffmpeg, ignition, ignition-cmake ? ignition.cmake0
, ignition-common ? ignition.common, ignition-math ? ignition.math4
, ignition-transport ? ignition.transport, ignition-msgs ? ignition.msgs
, ignition-fuel-tools ? ignition.fuel-tools

, bullet, withBulletEngineSupport ? false
, version ? "11.0.0"
, srcSha256 ? "1xc631ba57xnvivf769vvr6k7ib06krybb9ycqirmxzvsqz3x0iw"
, ... }: with lib;

mkDerivation rec {
  pname = "gazebo";
  inherit version;

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    sha256 = srcSha256;
  };

  patches = [
    # Fix CMake relative path assumptions
    (fetchpatch (if lib.versionAtLeast version "11" then {
      # https://github.com/osrf/gazebo/pull/2778
      url = "https://github.com/osrf/gazebo/commit/6d1ef09243326fd4ef837b4638671dd707f77ca4.patch";
      sha256 = "0s0wyg0fd0y5mxn6kq1b2y5a6agrvplnpcx3x9bzmhz0ffn8xkw5";
    } else {
      # https://github.com/osrf/gazebo/pull/2779
      url = "https://github.com/osrf/gazebo/commit/8d8dcff5c0c92c5903883f3215236c6bf6ff1a5f.patch";
      sha256 = "1q13cfscf02qkkp0wq03phdakl4i0qzlibiw0k76p50dygw2z864";
    }))
  ];

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
