
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-generator-dds-idl";
  version = "0.13.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/lyrical/rosidl_generator_dds_idl/0.13.0-3.tar.gz";
    name = "0.13.0-3.tar.gz";
    sha256 = "7202b719937ea82d433f5c1d27aa97836dc3c5d1d8e248893d492e6d70af71ef";
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
