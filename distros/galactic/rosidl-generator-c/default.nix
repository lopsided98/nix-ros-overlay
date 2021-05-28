
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-python, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-cmake, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-interface, test-interface-files }:
buildRosPackage {
  pname = "ros-galactic-rosidl-generator-c";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/galactic/rosidl_generator_c/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "5dad322027dc8d72b4a9af9201924d29c3c6079460c93830c16c0874adc8d69c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-runtime-c test-interface-files ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python rosidl-cli rosidl-cmake rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
