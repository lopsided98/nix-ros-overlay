
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, rosidl-cmake, rosidl-parser, ament-lint-auto, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rosidl-generator-cpp";
  version = "0.6.3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_generator_cpp/0.6.3-0.tar.gz;
    sha256 = "49fca695e681fc7bb6dc560aecdce2f7a52a177587f9cf8b820cbc473405fbc1";
  };

  checkInputs = [ ament-lint-common ament-cmake-gtest rosidl-cmake ament-lint-auto rosidl-generator-c ];
  propagatedBuildInputs = [ rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
