
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen3-cmake-module, moveit-common, moveit-core, moveit-msgs, rclcpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-rolling-pilz-industrial-motion-planner-testutils";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/pilz_industrial_motion_planner_testutils/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "7ed2230637ddc9e7fe49fb629edff7077c0ac53c06a05a38598b1ecef11150b7";
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
