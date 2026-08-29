
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, gtest-vendor, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-septentrio-gnss-driver";
  version = "1.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/septentrio_gnss_driver_ros2-release/archive/release/kilted/septentrio_gnss_driver/1.4.8-1.tar.gz";
    name = "1.4.8-1.tar.gz";
    sha256 = "ec2599440aa9b1b352699f2de808ea7e56a81835d4df209f17e83ff3af1508f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ ament-cmake-ros boost diagnostic-msgs geographiclib geometry-msgs gps-msgs gtest-vendor libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSaic: C++ driver for Septentrio's GNSS and INS receivers";
    license = with lib.licenses; [ bsd3 ];
  };
}
