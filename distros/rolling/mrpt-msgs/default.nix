
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cppcheck, ament-cpplint, ament-lint-auto, ament-lint-cmake, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-msgs";
  version = "0.4.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_msgs-release/archive/release/rolling/mrpt_msgs/0.4.4-2.tar.gz";
    name = "0.4.4-2.tar.gz";
    sha256 = "1af4fda9f607512b8e016eed97e3da1a83af98db8a9e50ad40a71cbae22958a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cppcheck ament-cpplint ament-lint-auto ament-lint-cmake ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
