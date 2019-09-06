
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-generator-c }:
buildRosPackage rec {
  pname = "ros-dashing-rosidl-generator-cpp";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_generator_cpp/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "13e2dcffef02c8baf5c6043416946ae239d2652a05dbb6095647af8ae792c3dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-cmake-gtest rosidl-cmake ament-lint-auto rosidl-generator-c ];
  propagatedBuildInputs = [ rosidl-cmake rosidl-generator-c ament-cmake rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
