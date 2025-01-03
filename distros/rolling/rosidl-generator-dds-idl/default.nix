
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-dds-idl";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/rolling/rosidl_generator_dds_idl/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "6f4c0454bb5d0d8c66bda98356e4a4af0251c23c4949c86287e629c4fe0fc1ae";
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
