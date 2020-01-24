
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-parser, rosidl-typesupport-interface, test-interface-files }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-generator-c";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_generator_c/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "2a5992b8447081c93e262cfaeb2a8f7b7cba8079f4ef83c027cc8c9d74553526";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake test-interface-files ];
  propagatedBuildInputs = [ ament-cmake rosidl-cmake rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
