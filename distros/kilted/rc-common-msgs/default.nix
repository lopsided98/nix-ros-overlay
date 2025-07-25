
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-rc-common-msgs";
  version = "0.5.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_common_msgs_ros2-release/archive/release/kilted/rc_common_msgs/0.5.3-6.tar.gz";
    name = "0.5.3-6.tar.gz";
    sha256 = "9ce9b2469d93f277ab75f719d25ba5277e2aa7427752f7701f88ae2c6d543adb";
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
