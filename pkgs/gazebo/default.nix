{ lib, mkDerivation, fetchurl, fetchpatch, cmake, pkg-config, ronn, libGL
, openal, hdf5, curl, tinyxml, tinyxml-2, libtar, gts, libusb1, qtbase, gdal
, libuuid, graphviz, libsForQt5, freeimage, boost, protobuf, sdformat, tbb
, ogre1_10, ffmpeg, ignition, ignition-cmake ? ignition.cmake0
, ignition-common ? ignition.common, ignition-math ? ignition.math4
, ignition-transport ? ignition.transport8, ignition-msgs ? ignition.msgs
, ignition-fuel-tools ? ignition.fuel-tools4

, bullet, withBulletEngineSupport ? false
, version ? "11.5.1"
, srcSha256 ? "0g9hna359r27j1wnncpyfvzrsjh6azki63cpa2kv1m3q4akpicy7"
, ... }: with lib;

mkDerivation rec {
  pname = "gazebo";
  inherit version;

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    sha256 = srcSha256;
  };

  patches =
    # Fix compatibility with qwt headers not in subdirectory
    # https://github.com/osrf/gazebo/pull/2887
    lib.optional (lib.versionOlder version "11.3.0") (fetchpatch {
      url = "https://github.com/osrf/gazebo/commit/25d3381c083a9eeafcee34ef648339a83e192676.patch";
      sha256 = "1qixrz2jiqdc37mgcsnv562m7mzr6w0rd67fmkr5710n6dnky4y7";
    }) ++
    # Fix pkgconfig prefix path
    lib.optional (lib.versionAtLeast version "11.4.0") (fetchpatch {
      url = "https://github.com/osrf/gazebo/commit/a7e6e1c1de46c3eb7eecab0de1263f7360ef9f42.patch";
      sha256 = "09y5ggx74mc70np7x1cj8p936jqkx4f6nvly0qscsjrv7x6gsb6j";
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
