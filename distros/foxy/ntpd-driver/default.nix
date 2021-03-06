
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-ntpd-driver";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/vooon/ntpd_driver-release/archive/release/foxy/ntpd_driver/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "4d39b8402566ab65301a49eea80a7d29f65d0fb8cf896a5dcaba770b3c00519d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ class-loader poco rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ntpd_driver sends TimeReference message time to ntpd server'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
