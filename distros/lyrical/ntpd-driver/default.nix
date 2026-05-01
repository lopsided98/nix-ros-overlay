
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ntpd-driver";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/lyrical/ntpd_driver/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "378359b5bebb75d89f377f69513965b3566f11b9a7b9a6727e4adce59a2812bd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ poco rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ntpd_driver sends TimeReference message time to ntpd server";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
