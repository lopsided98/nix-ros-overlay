
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-msgs";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_msgs/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "5ad8cede2e8d4a93b577b2e552a79d677cbb4ff59cc21401404685f65f2d1754";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the ROS2 Planning System'';
    license = with lib.licenses; [ asl20 ];
  };
}
