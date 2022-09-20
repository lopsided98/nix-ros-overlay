
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-cmake }:
buildRosPackage {
  pname = "ros-galactic-rosidl-generator-dds-idl";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/galactic/rosidl_generator_dds_idl/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "d066297d6b9a77071ae7955d6b804a1dea21ccdcc8fd4480e8bb40deac5df781";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python rosidl-cli rosidl-cmake ];
  nativeBuildInputs = [ ament-cmake rosidl-cmake ];

  meta = {
    description = ''Generate the DDS interfaces for ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
