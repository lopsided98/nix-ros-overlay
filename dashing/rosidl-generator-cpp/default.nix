
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gtest, rosidl-generator-c, rosidl-parser }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-cpp";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_generator_cpp/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "de780f9561333d09e10f328f75ece3b391cd27e9377001ea866003742764c58c";
  };

  buildType = "ament_cmake";
  checkInputs = [ rosidl-cmake ament-lint-common ament-lint-auto rosidl-generator-c ament-cmake-gtest ];
  propagatedBuildInputs = [ rosidl-parser rosidl-generator-c rosidl-cmake ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
