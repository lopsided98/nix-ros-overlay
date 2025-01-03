
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-msgs";
  version = "2.0.18-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_msgs/2.0.18-1.tar.gz";
    name = "2.0.18-1.tar.gz";
    sha256 = "b04b764d90f2fa6b3ad324a4191fa3717cc0bf4160f8c0488a3d06432f701b35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages and service files for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
