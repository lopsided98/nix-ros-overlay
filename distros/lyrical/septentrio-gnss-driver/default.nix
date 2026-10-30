
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, gtest-vendor, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-septentrio-gnss-driver";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/septentrio_gnss_driver_ros2-release/archive/release/lyrical/septentrio_gnss_driver/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "a0d5d34f75142b1be34e587261d5c7467d1a84690283e7defad9d6e34c341b52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  propagatedBuildInputs = [ ament-cmake-ros boost diagnostic-msgs geographiclib geometry-msgs gps-msgs gtest-vendor libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSaic: C++ driver for Septentrio's GNSS and INS receivers";
    license = with lib.licenses; [ bsd3 ];
  };
}
