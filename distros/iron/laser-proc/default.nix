
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-laser-proc";
  version = "1.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_proc-release/archive/release/iron/laser_proc/1.0.2-6.tar.gz";
    name = "1.0.2-6.tar.gz";
    sha256 = "3ae859ccb0ca583b9061f21aedb25206e0cb9f9b7b33c0174a70a0d44f2d511e";
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
