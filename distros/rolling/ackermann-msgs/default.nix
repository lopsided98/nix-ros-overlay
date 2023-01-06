
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ackermann-msgs";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackermann_msgs-release/archive/release/rolling/ackermann_msgs/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "990103ad9f6ff0976f7239c51a781ccdddf1b1d9b292635e0a1fd545d97f15fa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
