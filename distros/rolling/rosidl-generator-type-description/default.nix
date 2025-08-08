
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-type-description";
  version = "5.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_generator_type_description/5.0.1-1.tar.gz";
    name = "5.0.1-1.tar.gz";
    sha256 = "c07148804c2a1f4f13840acd649fd40a9830d3a2740c6f34e63dc37c77b8973c";
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
