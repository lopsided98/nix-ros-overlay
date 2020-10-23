
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rc-common-msgs";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_common_msgs_ros2-release/archive/release/eloquent/rc_common_msgs/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "62768a35b95b18c5675c3047fe8b036ff1bed394c80283870ae1f2792d20bfb9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Common msg and srv definitions used by Roboception's ROS2 packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
