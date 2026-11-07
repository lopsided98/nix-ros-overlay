
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-parser }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-generator-type-description";
  version = "5.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_generator_type_description/5.2.2-1.tar.gz";
    name = "5.2.2-1.tar.gz";
    sha256 = "de050dd3d7cab618ed5865b80df4ed5a987aa7ba2fd2c2ccced1d3afeeabacfd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-parser ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ament-cmake-ros-core python3 ];

  meta = {
    description = "Generate hashes and descriptions of ROS 2 interface types, per REP-2011.";
    license = with lib.licenses; [ asl20 ];
  };
}
