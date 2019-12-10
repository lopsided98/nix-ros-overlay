
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-generator-c, rosidl-parser, test-interface-files }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-generator-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_generator_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "8c77afbe3c1d981ecc13b7f7786d763956b2ae17e30769f7999fee0a2f18b964";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-generator-c test-interface-files ];
  propagatedBuildInputs = [ ament-cmake rosidl-cmake rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
