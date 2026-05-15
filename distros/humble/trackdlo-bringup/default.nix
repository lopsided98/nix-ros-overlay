
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, realsense2-camera, robot-state-publisher, rviz2, tf2-ros, trackdlo-core, trackdlo-segmentation, trackdlo-utils, xacro }:
buildRosPackage {
  pname = "ros-humble-trackdlo-bringup";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/humble/trackdlo_bringup/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "9787cd42ec74927d9a91b6650a22334c63805839476b57b3ddc55684b5943474";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch launch-ros realsense2-camera robot-state-publisher rviz2 tf2-ros trackdlo-core trackdlo-segmentation trackdlo-utils xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "trackdlo_perception: Launch files, configuration, and bringup";
    license = with lib.licenses; [ bsd3 ];
  };
}
