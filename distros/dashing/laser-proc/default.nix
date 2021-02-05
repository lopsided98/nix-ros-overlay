
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-laser-proc";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/dashing/laser_proc/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "6b6d1a325d8bc7920389e386327fec57d8f8a3423e7870aa41773b7cc48a75e5";
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
