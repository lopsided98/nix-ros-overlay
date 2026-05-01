
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-rt-usb-9axisimu-driver";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_usb_9axisimu_driver-release/archive/release/lyrical/rt_usb_9axisimu_driver/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "e680da0765da93a56ddca2998e15352ea9161bf15a7c588720fef83286cc649b";
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
