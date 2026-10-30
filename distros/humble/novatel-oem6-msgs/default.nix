
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-xmllint, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-novatel-oem6-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_sensors-release/archive/release/humble/novatel_oem6_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "17543a09f025f461228a6d087263eda5b9b810e3dee522fcb4209051913842d1";
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
