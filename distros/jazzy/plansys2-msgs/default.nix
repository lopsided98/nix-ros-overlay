
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-plansys2-msgs";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/jazzy/plansys2_msgs/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "3b0645d77a72ad0e7a16b1053e5aae6f4ba2be4cd1b8f83be01c01d51ad70fa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and service files for the ROS2 Planning System";
    license = with lib.licenses; [ asl20 ];
  };
}
