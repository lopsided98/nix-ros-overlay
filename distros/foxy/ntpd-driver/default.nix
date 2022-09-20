
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-ntpd-driver";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/vooon/ntpd_driver-release/archive/release/foxy/ntpd_driver/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6f483aa4ec01db6af0d7a058e633023080f7d69d84f2d75cfef9f4c6c9556803";
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
