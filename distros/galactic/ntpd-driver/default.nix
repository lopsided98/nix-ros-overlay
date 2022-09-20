
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-ntpd-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/vooon/ntpd_driver-release/archive/release/galactic/ntpd_driver/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "34660d7c06415c46bbf0ea33ec4e7dcc9d60ef5f7ca5b10d272d2d52db2aad9d";
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
