
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-novatel-oem6-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/jazzy/novatel_oem6_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "dad9af8a0cf94458f248690ff1b7146adf51199ac1affda9f19a0cdcd0467000";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-xmllint ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS messages and services for Novatel OEM6";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
