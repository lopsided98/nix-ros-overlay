
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-serial-util, ament-cmake, tf2, nav-msgs, ament-lint-auto, sensor-msgs, diagnostic-msgs, rclcpp-components, gps-msgs, tf2-geometry-msgs, rclcpp, ament-cmake-gtest, std-msgs, ament-index-cpp, novatel-gps-msgs, swri-roscpp, boost, swri-math-util, libpcap, diagnostic-updater }:
buildRosPackage {
  pname = "ros-dashing-novatel-gps-driver";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/dashing/novatel_gps_driver/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "bec8812154087cc0d76383a58e50cb5d24688fc817aea4b7c223c4f6c7eb1a39";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost sensor-msgs diagnostic-msgs rclcpp-components std-msgs swri-serial-util swri-math-util gps-msgs libpcap tf2-geometry-msgs tf2 diagnostic-updater rclcpp nav-msgs novatel-gps-msgs swri-roscpp ];
  checkInputs = [ ament-index-cpp ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs boost diagnostic-msgs rclcpp-components std-msgs swri-serial-util swri-math-util gps-msgs libpcap tf2-geometry-msgs tf2 diagnostic-updater rclcpp nav-msgs novatel-gps-msgs swri-roscpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for NovAtel receivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
