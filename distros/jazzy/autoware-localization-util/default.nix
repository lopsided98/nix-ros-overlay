
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-utils-geometry, autoware-utils-math, diagnostic-msgs, geometry-msgs, rcl-yaml-param-parser, rclcpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-localization-util";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_localization_util/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "28561348fa7c1920e8cf7fd969bdc84514ec3c1283d993e2e6a61583449b7625";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-index-cpp ament-lint-auto rcl-yaml-param-parser ];
  propagatedBuildInputs = [ autoware-utils-geometry autoware-utils-math diagnostic-msgs geometry-msgs rclcpp std-msgs tf2 tf2-eigen tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_localization_util package";
    license = with lib.licenses; [ asl20 ];
  };
}
