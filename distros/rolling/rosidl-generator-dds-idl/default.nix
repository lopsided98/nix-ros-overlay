
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-dds-idl";
  version = "0.11.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/rolling/rosidl_generator_dds_idl/0.11.1-2.tar.gz";
    name = "0.11.1-2.tar.gz";
    sha256 = "bd92e89bf5239b59d0317d27d8891a1480741d0a061f2acd425c150c027668c3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python rosidl-cli rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the DDS interfaces for ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
