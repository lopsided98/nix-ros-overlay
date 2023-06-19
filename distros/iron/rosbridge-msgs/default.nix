
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rosbridge-msgs";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/iron/rosbridge_msgs/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "d4313588d4c75744bdc39d6fa9131822bb45fc7c7dfc860fe8c0a3ca18e238c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Package containing message files'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
