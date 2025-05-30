
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-ros, rosidlcpp-generator-core, rosidlcpp-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidlcpp-generator-type-description";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidlcpp-release/archive/release/rolling/rosidlcpp_generator_type_description/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "a9f3a848c94ef45a005c475a5b35dfa1ec9a7b1c361cec1194f3d8684d750fa5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ament-cmake-core rosidlcpp-generator-core rosidlcpp-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-ros ];

  meta = {
    description = "Generate hashes and descriptions of ROS 2 interface types, per REP-2011.";
    license = with lib.licenses; [ asl20 ];
  };
}
