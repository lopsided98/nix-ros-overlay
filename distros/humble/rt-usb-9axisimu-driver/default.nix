
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-rt-usb-9axisimu-driver";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_usb_9axisimu_driver-release/archive/release/humble/rt_usb_9axisimu_driver/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "20c524d9c850717950b3d3e87b02b587dbb2dcf36e7e32e1544accf310df1f59";
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
