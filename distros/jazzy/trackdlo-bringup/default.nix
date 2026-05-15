
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch, launch-ros, realsense2-camera, robot-state-publisher, rviz2, tf2-ros, trackdlo-core, trackdlo-segmentation, trackdlo-utils, xacro }:
buildRosPackage {
  pname = "ros-jazzy-trackdlo-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/HayatoShimada/trackdlo_perception-release/archive/release/jazzy/trackdlo_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9191f9aff59f2a49530d3c22639ac161a7e4eb16a5f905d5e3bc33edc6517edb";
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
