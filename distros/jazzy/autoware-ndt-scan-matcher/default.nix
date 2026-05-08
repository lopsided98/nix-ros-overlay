
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-index-cpp, ament-lint-auto, autoware-agnocast-wrapper, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-localization-msgs, autoware-localization-util, autoware-map-msgs, autoware-qos-utils, autoware-utils-diagnostics, autoware-utils-logging, autoware-utils-pcl, autoware-utils-visualization, diagnostic-msgs, fmt, geometry-msgs, launch-testing-ament-cmake, nav-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, sensor-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-ndt-scan-matcher";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_ndt_scan_matcher/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "55d46e7554eee292f8e3972a9280dcf719ccaab86548825728d06418e76292ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-index-cpp ament-lint-auto launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-agnocast-wrapper autoware-internal-debug-msgs autoware-internal-localization-msgs autoware-localization-util autoware-map-msgs autoware-qos-utils autoware-utils-diagnostics autoware-utils-logging autoware-utils-pcl autoware-utils-visualization diagnostic-msgs fmt geometry-msgs nav-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_ndt_scan_matcher package";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
