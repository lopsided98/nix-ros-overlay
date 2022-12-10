
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-index-python, ament-lint-auto, ament-lint-common, rosidl-cli, rosidl-pycommon }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-dds-idl";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/rolling/rosidl_generator_dds_idl/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "9b8c0ef6eddcadab9bf5fb7b2f85812e2c53b896da2be6461026b48a22eb65e9";
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
