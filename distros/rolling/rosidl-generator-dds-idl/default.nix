
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-dds-idl";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/rolling/rosidl_generator_dds_idl/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "cd8066adbf36043994ca9cfed149defd73a4bb7b6b937201bc3226a0b0475c09";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python rosidl-cli rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generate the DDS interfaces for ROS interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
