
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, gz-ros2-control-demos, launch, launch-ros }:
buildRosPackage {
  pname = "ros-humble-ign-ros2-control-demos";
  version = "0.7.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/humble/ign_ros2_control_demos/0.7.13-1.tar.gz";
    name = "0.7.13-1.tar.gz";
    sha256 = "a9071572da638fddcd5119d4ad86eb3427ea590f3cac6f1a71d1bff8b316d273";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp gz-ros2-control-demos launch launch-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shim package for gz_ros2_control_demos";
    license = with lib.licenses; [ asl20 ];
  };
}
