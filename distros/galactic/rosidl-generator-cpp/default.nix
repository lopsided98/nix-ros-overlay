
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-parser, rosidl-runtime-c, rosidl-runtime-cpp, test-interface-files }:
buildRosPackage {
  pname = "ros-galactic-rosidl-generator-cpp";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/galactic/rosidl_generator_cpp/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "577afd82e383fe38e324735475b0d022990b1b2e892f664e30cc0c18d5d44d1f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-runtime-c rosidl-runtime-cpp test-interface-files ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python rosidl-cli rosidl-cmake rosidl-generator-c rosidl-parser ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core rosidl-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
