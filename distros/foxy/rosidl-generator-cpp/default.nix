
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-runtime-c, rosidl-runtime-cpp, test-interface-files }:
buildRosPackage {
  pname = "ros-foxy-rosidl-generator-cpp";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_generator_cpp/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "9cabd478675c46568065299fc84b1f2e498651bef720edfdf9a9074e6f6fd70c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp test-interface-files ];
  propagatedBuildInputs = [ ament-cmake-core rosidl-cmake rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core rosidl-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
