
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cppcheck, ament-cpplint, ament-lint-auto, ament-lint-cmake, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-msgs";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_msgs-release/archive/release/kilted/mrpt_msgs/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "b3e97232fbad9b295f5280b7d5ba989798a1f71da35a9ce5cab598fe15abcd1b";
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
