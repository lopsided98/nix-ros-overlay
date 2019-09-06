
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-typesupport-interface, ament-lint-auto, ament-cmake-gtest, rosidl-cmake, rosidl-parser, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-crystal-rosidl-generator-c";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_generator_c/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "faf3e8c0b436926f12be1f2ae3190685d52e0fc6856aff7dc159bceb3456319c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-interface ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto rosidl-cmake ament-lint-common ];
  propagatedBuildInputs = [ rosidl-cmake ament-cmake rosidl-typesupport-interface rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
