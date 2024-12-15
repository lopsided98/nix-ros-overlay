{ lib, mkDerivation, fetchpatch, fetchurl, cmake, pkg-config, ronn, libGL
, openal, hdf5, curl, tinyxml, tinyxml-2, libtar, gts, libusb1, qtbase, gdal
, libuuid, graphviz, libsForQt5, freeimage, boost, protobuf, sdformat, tbb
, ogre1_9, ffmpeg_4, ignition, ignition-cmake ? ignition.cmake0
, ignition-common ? ignition.common, ignition-math ? ignition.math4
, ignition-transport ? ignition.transport8, ignition-msgs ? ignition.msgs5
, ignition-fuel-tools ? ignition.fuel-tools4
, wrapGAppsHook

, bullet, withBulletEngineSupport ? false }:

mkDerivation rec {
  pname = "gazebo";
  version = "11.14.0";

  src = fetchurl {
    url = "https://osrf-distributions.s3.amazonaws.com/gazebo/releases/${pname}-${version}.tar.bz2";
    hash = "sha256-fphCwEbJ4HVTVbJ0wkCoq79Olivnznt/WRlOX0tYT0U=";
  };

  patches = [
    # Allow building with graphviz 10+
    (fetchpatch {
      name = "fix-build-against-graphviz-10.patch";
      url = "https://github.com/gazebosim/gazebo-classic/commit/3a9efee7ccdf552cbf22188131782f242f6c0542.patch";
      hash = "sha256-KPwuDdTEWMDbLF/FQACM/huCYlXDg43cd8QBt3E859A=";
    })
  ];

  enableParallelBuilding = true;

  cmakeFlags = [ "-DUSE_HOST_CFLAGS=False" ];

  nativeBuildInputs = [ cmake pkg-config ronn wrapGAppsHook ];

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
  ] ++ lib.optional withBulletEngineSupport bullet;

  propagatedBuildInputs = [
    freeimage
    boost
    protobuf
    sdformat
    tbb
    ogre1_9
    ffmpeg_4
    ignition-math
    ignition-transport
    ignition-msgs
    ignition-fuel-tools
  ];

  qtWrapperArgs = [
    # Let the gazebo binary see neighboring binaries.
    # It attempts to run gzclient from PATH.
    "--prefix PATH : ${placeholder "out"}/bin"

    # Prevent Gazebo from attempting to use Wayland.
    # As is the case with RViz2, OGRE does not yet support it.
    "--set WAYLAND_DISPLAY dummy" # "dummy" is arbitrary - it just doesn't exist.
  ];

  meta = with lib; {
    homepage = "http://gazebosim.org/";
    description = "Multi-robot simulator for outdoor environments";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
