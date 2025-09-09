
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-kilted-rosidl-generator-dds-idl";
  version = "0.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/kilted/rosidl_generator_dds_idl/0.12.1-1.tar.gz";
    name = "0.12.1-1.tar.gz";
    sha256 = "480f8ca4c57ead2df2184c2339bfb9cc3fac09e8e6b0e2c6b3ed1912079c95f9";
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
