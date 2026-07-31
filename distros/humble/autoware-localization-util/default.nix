
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-index-cpp, ament-lint-auto, autoware-cmake, autoware-utils-geometry, autoware-utils-math, diagnostic-msgs, geometry-msgs, rcl-yaml-param-parser, rclcpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-localization-util";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_localization_util/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "4a3cb75fc2aea0fb4de60e3279198fb9ef0846cd5584e0c59e1eaa4a9373a4e0";
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
