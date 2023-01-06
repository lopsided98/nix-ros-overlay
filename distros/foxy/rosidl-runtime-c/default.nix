
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, performance-test-fixture, rcutils, rosidl-typesupport-interface }:
buildRosPackage {
  pname = "ros-foxy-rosidl-runtime-c";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/foxy/rosidl_runtime_c/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "0e5a40e5f007b14c7438ed47647993e25ee8c8f8e1cefc7173a31676a60b9a29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common performance-test-fixture ];
  propagatedBuildInputs = [ ament-cmake rcutils rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = ''Generate the ROS interfaces in C.'';
    license = with lib.licenses; [ asl20 ];
  };
}
