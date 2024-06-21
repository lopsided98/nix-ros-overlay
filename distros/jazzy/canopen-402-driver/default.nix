
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-402-driver";
  version = "0.2.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/jazzy/canopen_402_driver/0.2.9-2.tar.gz";
    name = "0.2.9-2.tar.gz";
    sha256 = "305bf7f67ef18c978129ad2095bddab9a8982c69a674205e17ac50567c3b5719";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-base-driver canopen-core canopen-interfaces canopen-proxy-driver rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driiver for devices implementing CIA402 profile";
    license = with lib.licenses; [ "LGPL-v3" ];
  };
}
