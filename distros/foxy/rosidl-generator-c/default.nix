
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils, rosidl-cmake, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-interface, test-interface-files }:
buildRosPackage {
  pname = "ros-foxy-rosidl-generator-c";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_generator_c/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "1ad154a9fea97fe04bfbd24454d4be546f32cd8058c0813c921d8698942cb20b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake rosidl-runtime-c test-interface-files ];
  propagatedBuildInputs = [ ament-cmake-core rcutils rosidl-cmake rosidl-parser rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros rosidl-cmake ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
