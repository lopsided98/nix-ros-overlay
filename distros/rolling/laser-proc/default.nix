
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-laser-proc";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/rolling/laser_proc/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "4cbe9118c3974b216a49ca00b2164547194cb18175771e02d78240b531db17e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "laser_proc";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
