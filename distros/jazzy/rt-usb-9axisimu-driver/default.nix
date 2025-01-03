
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-rt-usb-9axisimu-driver";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_usb_9axisimu_driver-release/archive/release/jazzy/rt_usb_9axisimu_driver/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "f9bb3853c339647686d53639a638267a379c1c851758db7deef96a873c4a6dcd";
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
