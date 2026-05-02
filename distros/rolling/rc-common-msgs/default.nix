
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-common-msgs";
  version = "0.5.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_common_msgs_ros2-release/archive/release/rolling/rc_common_msgs/0.5.3-6.tar.gz";
    name = "0.5.3-6.tar.gz";
    sha256 = "a2ad1cde6731fef2af90dbcb139d1ff4f861704a370019784f17c0c706b73c10";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Common msg and srv definitions used by Roboception's ROS2 packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
