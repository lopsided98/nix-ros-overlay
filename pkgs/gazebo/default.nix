{ lib, mkDerivation, fetchurl, fetchpatch, cmake, pkg-config, ronn, libGL
, openal, hdf5, curl, tinyxml, tinyxml-2, libtar, gts, libusb1, qtbase, gdal
, libuuid, graphviz, libsForQt5, freeimage, boost, protobuf, sdformat, tbb
, ogre1_9, ffmpeg, ignition, ignition-cmake ? ignition.cmake0
, ignition-common ? ignition.common, ignition-math ? ignition.math4
, ignition-transport ? ignition.transport8, ignition-msgs ? ignition.msgs5
, ignition-fuel-tools ? ignition.fuel-tools4

, bullet, withBulletEngineSupport ? false
, version ? "11.11.0"
, srcHash ? "sha256-DCY3qHPtFOhI550+3IZyyPs5ABBzKHzpTpmRqudt2Vg="
, ... }: with lib;

mkDerivation rec {
  pname = "gazebo";
  inherit version;

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    hash = srcHash;
  };

  patches =
    # Fix compatibility with OpenAL v1.20.0
    lib.optional (lib.versionOlder version "11.0.0") (fetchpatch {
      url = "https://github.com/osrf/gazebo/commit/b4429a242c43e01c367bc02afa2c4a0e6b59dddd.patch";
      sha256 = "045dp4pr0gn5ns84w785r4x2g0dfrkrb9wy5pk0yqwq6azsj6v23";
    }) ++
    # Fix compatibility with qwt headers not in subdirectory
    # https://github.com/osrf/gazebo/pull/2887
    lib.optional (lib.versionOlder version "11.3.0") (fetchpatch {
      url = "https://github.com/osrf/gazebo/commit/25d3381c083a9eeafcee34ef648339a83e192676.patch";
      sha256 = "1qixrz2jiqdc37mgcsnv562m7mzr6w0rd67fmkr5710n6dnky4y7";
    });

  enableParallelBuilding = true;

  cmakeFlags = [ "-DUSE_HOST_CFLAGS=False" ];

  nativeBuildInputs = [ cmake pkg-config ronn ];

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
    qtbase
    gdal
    libuuid
    graphviz
    ignition-cmake
    ignition-common
    libsForQt5.qwt
  ] ++ optional withBulletEngineSupport bullet;

  propagatedBuildInputs = [
    freeimage
    boost
    protobuf
    sdformat
    tbb
    ogre1_9
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
