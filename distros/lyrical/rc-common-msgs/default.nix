
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rc-common-msgs";
  version = "0.5.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_common_msgs_ros2-release/archive/release/lyrical/rc_common_msgs/0.5.3-7.tar.gz";
    name = "0.5.3-7.tar.gz";
    sha256 = "b1f46d9b6a9b1a73e96234d3021873e0ea6b32043215d36a1a3ca5bdfe170a1b";
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
