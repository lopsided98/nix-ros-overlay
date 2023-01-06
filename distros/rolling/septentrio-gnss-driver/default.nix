
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-septentrio-gnss-driver";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver_ros2-release/archive/release/rolling/septentrio_gnss_driver/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "8b9b3c6f265932e681f22ae67c955f2904a1c4ab8b487764a67e54c2025d8dab";
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
