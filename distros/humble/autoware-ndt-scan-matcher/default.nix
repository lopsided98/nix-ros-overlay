
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-lint-auto, autoware-cmake, autoware-internal-debug-msgs, autoware-internal-localization-msgs, autoware-localization-util, autoware-map-msgs, autoware-utils-diagnostics, autoware-utils-logging, autoware-utils-pcl, autoware-utils-visualization, diagnostic-msgs, fmt, geometry-msgs, nav-msgs, pcl, pcl-conversions, rclcpp, rclcpp-components, ros-testing, sensor-msgs, std-srvs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-ndt-scan-matcher";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_ndt_scan_matcher/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "359a9f13b965857e7fd548d686a06e35732441e3864c8d943e86c081ef114d96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-lint-auto ros-testing ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-localization-msgs autoware-localization-util autoware-map-msgs autoware-utils-diagnostics autoware-utils-logging autoware-utils-pcl autoware-utils-visualization diagnostic-msgs fmt geometry-msgs nav-msgs pcl pcl-conversions rclcpp rclcpp-components sensor-msgs std-srvs tf2 tf2-eigen tf2-geometry-msgs tf2-ros tf2-sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_ndt_scan_matcher package";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
