
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-laser-proc";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/rolling/laser_proc/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "3d86097a193a83061f9e37041089e884a5e56c756e17b888028a6ff77659963a";
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
