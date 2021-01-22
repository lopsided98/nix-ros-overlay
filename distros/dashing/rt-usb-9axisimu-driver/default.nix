
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-dashing-rt-usb-9axisimu-driver";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_usb_9axisimu_driver-release/archive/release/dashing/rt_usb_9axisimu_driver/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "038da30726fc7a669dc50ec6412dc518226767e3f3da232466dbe418c9d82685";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The rt_usb_9axisimu_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
