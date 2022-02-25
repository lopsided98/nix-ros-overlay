
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-msgs";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_msgs/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "df7293e4a536542b9a255ef6a9f87c9c8c308895904154fd3296676924911906";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-msgs builtin-interfaces rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
