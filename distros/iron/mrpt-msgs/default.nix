
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cppcheck, ament-cpplint, ament-lint-auto, ament-lint-cmake, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-mrpt-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_msgs-release/archive/release/iron/mrpt_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "726f5f3d736b2cb18345fa461668987cef9303455fbd47174dcc75635d7ebef0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cppcheck ament-cpplint ament-lint-auto ament-lint-cmake ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS messages for MRPT classes and objects";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
