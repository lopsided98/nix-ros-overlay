
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rosidl-typesupport-interface, ament-cmake-ros, ament-lint-common, ament-cmake, ament-cmake-gtest, rosidl-parser, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-c";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_generator_c/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "d962db1e0542e342cae1de57e75bff407173fd22efca8ddc83c6297de594faaa";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-typesupport-interface ];
  checkInputs = [ rosidl-cmake ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-parser rosidl-cmake rosidl-typesupport-interface ament-cmake ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
