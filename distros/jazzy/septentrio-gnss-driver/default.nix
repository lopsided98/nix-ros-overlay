
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-septentrio-gnss-driver";
  version = "1.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/septentrio_gnss_driver_ros2-release/archive/release/jazzy/septentrio_gnss_driver/1.4.0-3.tar.gz";
    name = "1.4.0-3.tar.gz";
    sha256 = "ea913bca837990ebffff45c29404904672bd634d63aa807c4ab818d0eb2c5663";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost diagnostic-msgs geographiclib geometry-msgs gps-msgs libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROSaic: C++ driver for Septentrio's GNSS and INS receivers";
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
