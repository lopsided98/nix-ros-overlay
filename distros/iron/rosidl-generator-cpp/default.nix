
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-generator-c, rosidl-generator-type-description, rosidl-parser, rosidl-pycommon, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-iron-rosidl-generator-cpp";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/iron/rosidl_generator_cpp/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "17d7860d55c7f3a7b62c78a85e02479d2d3eae21f9f49109c12160266e648427";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-generator-c rosidl-generator-type-description rosidl-parser rosidl-pycommon rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core python3 rosidl-pycommon ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
