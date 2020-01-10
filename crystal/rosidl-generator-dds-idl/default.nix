
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-cmake }:
buildRosPackage {
  pname = "ros-crystal-rosidl-generator-dds-idl";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/crystal/rosidl_generator_dds_idl/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "48f52d487269aacba9ec8e4aa8a0d0646a659daea3042708c1b5a9ac1a32596a";
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
