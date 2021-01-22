
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-cmake }:
buildRosPackage {
  pname = "ros-dashing-rosidl-generator-dds-idl";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/dashing/rosidl_generator_dds_idl/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "122624f90c83df574a8f2ee8aaba0c9b76a1d46ce79adfee72c4756ded5e6f49";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake rosidl-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generate the DDS interfaces for ROS interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
