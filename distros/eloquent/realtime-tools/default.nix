
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-eloquent-realtime-tools";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/eloquent/realtime_tools/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "5f3e1cfc4340a01ab8865360281ed9159dbecf6ed29d5adc5d2c6f122beb9082";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock rclcpp-action test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
