
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-tf";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_tf/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "76fd8619019af814721e1a3b43c6a9210bf62e97444e294492d4f58c647e2c3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-geometry geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_tf package";
    license = with lib.licenses; [ asl20 ];
  };
}
