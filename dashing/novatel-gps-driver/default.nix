
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-msgs, boost, libpcap, ament-cmake-gtest, gps-msgs, rclcpp, swri-math-util, tf2-geometry-msgs, nav-msgs, ament-index-cpp, std-msgs, swri-serial-util, sensor-msgs, diagnostic-updater, tf2, swri-roscpp, novatel-gps-msgs, ament-lint-auto, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-novatel-gps-driver";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/dashing/novatel_gps_driver/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "bec8812154087cc0d76383a58e50cb5d24688fc817aea4b7c223c4f6c7eb1a39";
  };

  buildType = "ament_cmake";
  buildInputs = [ swri-math-util swri-serial-util boost libpcap tf2-geometry-msgs sensor-msgs diagnostic-updater tf2 swri-roscpp nav-msgs gps-msgs rclcpp novatel-gps-msgs std-msgs diagnostic-msgs rclcpp-components ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ swri-math-util swri-serial-util boost tf2-geometry-msgs libpcap sensor-msgs diagnostic-updater swri-roscpp tf2 nav-msgs gps-msgs rclcpp novatel-gps-msgs std-msgs diagnostic-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
