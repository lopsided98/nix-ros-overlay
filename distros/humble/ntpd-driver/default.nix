
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, poco, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-ntpd-driver";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ntpd_driver-release/archive/release/humble/ntpd_driver/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "682fec236cc686248ffcfe7d5a3f074efa029fcf6859f7f5594e01b4d28fc51a";
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
