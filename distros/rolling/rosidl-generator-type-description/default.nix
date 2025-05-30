
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-type-description";
  version = "4.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_generator_type_description/4.10.0-1.tar.gz";
    name = "4.10.0-1.tar.gz";
    sha256 = "dbc8e4cca3944af9451c38eac245978daa40df0a4f8fcf933ca6f333a0235155";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros-core ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros-core python3 ];

  meta = {
    description = "Generate hashes and descriptions of ROS 2 interface types, per REP-2011.";
    license = with lib.licenses; [ asl20 ];
  };
}
