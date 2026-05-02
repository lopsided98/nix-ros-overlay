
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-geometry, geometry-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-tf";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_tf/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "7f828fc631d171752902e20b15925fc1a17e607a06f467102424bebd0530191d";
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
