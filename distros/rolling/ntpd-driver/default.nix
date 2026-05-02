
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-ntpd-driver";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/rolling/ntpd_driver/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "f3355784ff912c949db14a86d4b30452f05b5155341cf7db947570b24a63364e";
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
