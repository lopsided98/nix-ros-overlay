
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-ros, boost, diagnostic-msgs, geographiclib, geometry-msgs, gps-msgs, gtest-vendor, libpcap, nav-msgs, nmea-msgs, rclcpp, rclcpp-components, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-septentrio-gnss-driver";
  version = "1.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/septentrio_gnss_driver_ros2-release/archive/release/jazzy/septentrio_gnss_driver/1.4.4-1.tar.gz";
    name = "1.4.4-1.tar.gz";
    sha256 = "d705139537d1647746e73aa271f923fbb1144cfe94658b582b9d9f6717436b93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];
  propagatedBuildInputs = [ ament-cmake-ros boost diagnostic-msgs geographiclib geometry-msgs gps-msgs gtest-vendor libpcap nav-msgs nmea-msgs rclcpp rclcpp-components rosidl-default-runtime sensor-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto ];

  meta = {
    description = "ROSaic: C++ driver for Septentrio's GNSS and INS receivers";
    license = with lib.licenses; [ "BSD-3-Clause-License" ];
  };
}
