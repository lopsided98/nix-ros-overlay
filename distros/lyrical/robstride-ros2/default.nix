
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robstride-driver, robstride-examples, robstride-ros2-control }:
buildRosPackage {
  pname = "ros-lyrical-robstride-ros2";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/lyrical/robstride_ros2/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "82a2138ad987051b4e6fd37ee00219cf4b04e8ea3521c22b2d68b943a8d84e83";
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
