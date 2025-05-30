
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-canopen-402-driver";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_402_driver/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "318c5b20998cb9c8159f167d25936f55361aeec1f4ffd2574327a170ad187a39";
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
