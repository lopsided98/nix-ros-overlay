
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, ament-cmake-ros, ament-lint-common, ament-cmake, ament-cmake-gtest, rosidl-parser, test-interface-files, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-generator-c";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/eloquent/rosidl_generator_c/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "c045090a47172b3c9806fcf7b8ecb1d7dce83ff72d833ef923975a5e332f67df";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-interface ];
  checkInputs = [ rosidl-cmake ament-lint-common ament-lint-auto test-interface-files ament-cmake-gtest ];
  propagatedBuildInputs = [ rosidl-parser rosidl-cmake rosidl-typesupport-interface ament-cmake ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
