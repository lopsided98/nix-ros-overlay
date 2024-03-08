
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntpd-driver";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/rolling/ntpd_driver/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "edf811f6297e7fd32bfde6e8a352d57b2596ddcb823db453affa3799f4f10bb0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
