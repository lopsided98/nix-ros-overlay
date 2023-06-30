
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, boost, canopen-base-driver, canopen-core, canopen-interfaces, canopen-proxy-driver, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-canopen-402-driver";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_402_driver/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "c23348c61efeac649370139582709bdf986cca698cb299cc32565ae1e114e899";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ];
  propagatedBuildInputs = [ boost canopen-base-driver canopen-core canopen-interfaces canopen-proxy-driver rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driiver for devices implementing CIA402 profile'';
    license = with lib.licenses; [ "LGPL-v3" ];
  };
}
