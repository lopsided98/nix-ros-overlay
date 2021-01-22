
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-laser-proc";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/dashing/laser_proc/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f3702c1645541e03da789f04d4a3b81f87f00215ec946a642f8d3e2eb2e6b00a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
