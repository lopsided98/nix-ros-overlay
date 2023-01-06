
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntpd-driver";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/rolling/ntpd_driver/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "59cd40e8116ec8ac2e081a7266dbcbe2bfc97844b136f487c013f6b47840c260";
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
