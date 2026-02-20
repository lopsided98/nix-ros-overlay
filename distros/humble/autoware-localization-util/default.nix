
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-cppcheck, ament-index-cpp, ament-lint-auto, autoware-cmake, diagnostic-msgs, geometry-msgs, rcl-yaml-param-parser, rclcpp, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-localization-util";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_localization_util/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "a01185b5c987f9984276834b5b6047770f572f0be055cc4acfac456ddb2955ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-index-cpp ament-lint-auto rcl-yaml-param-parser ];
  propagatedBuildInputs = [ diagnostic-msgs geometry-msgs rclcpp std-msgs tf2 tf2-eigen tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_localization_util package";
    license = with lib.licenses; [ asl20 ];
  };
}
