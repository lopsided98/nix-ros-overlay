
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-localization-msgs, autoware-localization-util, autoware-map-msgs, autoware-qos-utils, autoware-utils-diagnostics, autoware-utils-logging, autoware-utils-pcl, autoware-utils-visualization, diagnostic-msgs, fmt, geometry-msgs, launch-testing-ament-cmake, nav-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, sensor-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-ndt-scan-matcher";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_ndt_scan_matcher/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "4f6a692aa9f1b006f441ff6f4791c28b174c1d948ea2d5ae0bd55f7b7dd86939";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-index-cpp ament-lint-auto launch-testing-ament-cmake ros-testing ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-localization-msgs autoware-localization-util autoware-map-msgs autoware-qos-utils autoware-utils-diagnostics autoware-utils-logging autoware-utils-pcl autoware-utils-visualization diagnostic-msgs fmt geometry-msgs nav-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_ndt_scan_matcher package";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
