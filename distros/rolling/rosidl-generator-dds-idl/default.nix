
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-cmake, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-dds-idl";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/rolling/rosidl_generator_dds_idl/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "6e3fb020301ed2426d36bf3c731d65b39c6b1014ec570a90c41836fce7ab3ece";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ament-index-python rosidl-cli rosidl-cmake rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generate the DDS interfaces for ROS interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
