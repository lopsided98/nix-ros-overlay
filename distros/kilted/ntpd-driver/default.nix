
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-ntpd-driver";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/kilted/ntpd_driver/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "5a5c35bef9aceedcf1951fc740a5179cd8f00b588746d0df78aa7931f9ef5532";
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
