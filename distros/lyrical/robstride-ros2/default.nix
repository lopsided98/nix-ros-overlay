
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robstride-driver, robstride-examples, robstride-ros2-control }:
buildRosPackage {
  pname = "ros-lyrical-robstride-ros2";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/lyrical/robstride_ros2/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "17cb036cb3f1bd4420dddf541b3900dba0543e2e90a5e9ed27bdc45aeb36853b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robstride-driver robstride-examples robstride-ros2-control ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregate installation package for the RobStride driver, ros2_control component, and examples.";
    license = with lib.licenses; [ mit ];
  };
}
