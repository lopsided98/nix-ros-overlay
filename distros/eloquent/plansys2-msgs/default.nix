
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-msgs";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_msgs/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "9de50f9be66b19551b9e5c964da72416fadaab01c45d13334b569a36fea2d34b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ action-msgs builtin-interfaces rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
