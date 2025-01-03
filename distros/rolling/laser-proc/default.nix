
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-laser-proc";
  version = "1.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/rolling/laser_proc/1.0.2-6.tar.gz";
    name = "1.0.2-6.tar.gz";
    sha256 = "ddaeb3bac65a671b51c8358245ba7ec40492287c9acc37c81361d07def2628a2";
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
