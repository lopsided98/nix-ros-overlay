
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-septentrio-gnss-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/septentrio-users/septentrio_gnss_driver_ros2-release/archive/release/foxy/septentrio_gnss_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "f168607051e842c13a598ed0a05dde24e3fb000fb69a90a7a93bfee511c0ab00";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ boost diagnostic-msgs geographiclib geometry-msgs gps-msgs libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROSaic: C++ driver for Septentrio's mosaic receivers and beyond'';
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
