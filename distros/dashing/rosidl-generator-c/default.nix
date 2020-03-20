
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-parser, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-c";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_generator_c/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "4a651b0626e46e88a353ad7a98b9b4757ed4c65eefe11c5289bd98e178286615";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake ];
  propagatedBuildInputs = [ ament-cmake rosidl-cmake rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
