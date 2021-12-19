{ lib, mkDerivation, fetchurl, fetchpatch, cmake, pkg-config, ronn, libGL
, openal, hdf5, curl, tinyxml, tinyxml-2, libtar, gts, libusb1, qtbase, gdal
, libuuid, graphviz, libsForQt5, freeimage, boost173, protobuf, sdformat, tbb
, ogre1_10, ffmpeg, ignition, ignition-cmake ? ignition.cmake0
, ignition-common ? ignition.common, ignition-math ? ignition.math4
, ignition-transport ? ignition.transport8, ignition-msgs ? ignition.msgs
, ignition-fuel-tools ? ignition.fuel-tools4

, bullet, withBulletEngineSupport ? false
, version ? "11.9.0"
, srcSha256 ? "0bhzp28kcif5qhbx8wdhvj7rdkcmiy4b8l50p8ss8858g3kwbpsp"
, ... }: with lib;

mkDerivation rec {
  pname = "gazebo";
  inherit version;

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    sha256 = srcSha256;
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
    }) ++
    # Fix CMake relative install path assumptions
    # https://github.com/osrf/gazebo/pull/3138
    lib.optional (lib.versionAtLeast version "11.8.0") (fetchpatch {
      url = "https://github.com/osrf/gazebo/commit/9bf5dac1546f3982d9da783a6ac5d7e674ddbe24.patch";
      sha256 = "0h9fmch8rgnsi3gnxvwfp0g9jgzy0z9p7nah005qw9lzmkvdrvs7";
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
    boost173
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
