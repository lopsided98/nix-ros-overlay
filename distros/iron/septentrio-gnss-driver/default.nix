
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-septentrio-gnss-driver";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/septentrio_gnss_driver_ros2-release/archive/release/iron/septentrio_gnss_driver/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "e3965febb3deebbb5e4d17b731e8a19164b093345f395875756861de3ba2fa8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ boost diagnostic-msgs geographiclib geometry-msgs gps-msgs libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
