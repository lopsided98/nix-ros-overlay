
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robstride-driver, robstride-examples, robstride-ros2-control }:
buildRosPackage {
  pname = "ros-rolling-robstride-ros2";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robstride_ros2-release/archive/release/rolling/robstride_ros2/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "f554005d9d723270832165aeaaddb66aa4cfa143ea1101b8b81d130c42d50d7f";
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
