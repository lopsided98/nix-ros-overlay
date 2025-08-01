
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-ntpd-driver";
  version = "2.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/kilted/ntpd_driver/2.2.0-4.tar.gz";
    name = "2.2.0-4.tar.gz";
    sha256 = "26955019a4f9c2e62e9d03427e46f17519bbcce532cc75be8e350f582ea577bc";
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
