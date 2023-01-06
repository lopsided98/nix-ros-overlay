
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-laser-proc";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/rolling/laser_proc/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "992243cd2ba28d5fb6e8507800dd3f41f4fc5b6928086769132db125a8d00592";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''laser_proc'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
