
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-pilz-industrial-motion-planner-testutils";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/pilz_industrial_motion_planner_testutils/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "79a8ccb0f4b7aa4917e955fcb2ee592a1224fdbcaae83a6e2c36d20b070f4e8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake tf2-eigen ];
  propagatedBuildInputs = [ eigen3-cmake-module moveit-common moveit-core moveit-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "Helper scripts and functionality to test industrial motion generation";
    license = with lib.licenses; [ bsd3 ];
  };
}
