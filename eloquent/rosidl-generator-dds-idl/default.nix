
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-cmake }:
buildRosPackage {
  pname = "ros-eloquent-rosidl-generator-dds-idl";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_dds-release/archive/release/eloquent/rosidl_generator_dds_idl/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "7dd764f29dbd9f06dca81d7564c7c9ab6717098ec98a570f6ae851cb8003e241";
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
