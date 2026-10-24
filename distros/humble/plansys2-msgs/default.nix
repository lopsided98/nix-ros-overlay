
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-plansys2-msgs";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_msgs/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "61c9b09218abd4fa4e397ccc746f56231ef9409acdcdab8bbba7646bdb4371a6";
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
