
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-rt-usb-9axisimu-driver";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_usb_9axisimu_driver-release/archive/release/rolling/rt_usb_9axisimu_driver/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "4b408891ce890705a22931ca843f05393288e76fbd06e2a1cddb57bb88bd6484";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rt_usb_9axisimu_driver package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
