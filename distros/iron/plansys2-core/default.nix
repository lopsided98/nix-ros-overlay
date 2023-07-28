
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, plansys2-msgs, plansys2-pddl-parser, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-plansys2-core";
  version = "2.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/iron/plansys2_core/2.0.10-1.tar.gz";
    name = "2.0.10-1.tar.gz";
    sha256 = "0cb8a01cd8583d39ee75f4900351f6d70cdbecd852a23cacd2dc63fc8975895a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs plansys2-pddl-parser pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains the PDDL-based core  for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
