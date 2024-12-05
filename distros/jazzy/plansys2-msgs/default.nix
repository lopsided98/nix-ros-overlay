
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-msgs";
  version = "2.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_msgs/2.0.14-1.tar.gz";
    name = "2.0.14-1.tar.gz";
    sha256 = "277abf1a716ed1c79aac85fe1d4b3c78f19a1491e21be3e8acc85942886f29f6";
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
