
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rc-common-msgs";
  version = "0.5.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_common_msgs_ros2-release/archive/release/humble/rc_common_msgs/0.5.3-4.tar.gz";
    name = "0.5.3-4.tar.gz";
    sha256 = "0eb6ad5ae24e8f8d5827deeb38a2bd997c46d92fb37582e9f07df4671b81c295";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS2 packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
