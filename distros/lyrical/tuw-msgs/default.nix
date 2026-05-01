
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, tuw-airskin-msgs, tuw-geometry-msgs, tuw-graph-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-map-msgs, tuw-object-msgs, tuw-std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-tuw-msgs";
  version = "0.2.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/lyrical/tuw_msgs/0.2.6-3.tar.gz";
    name = "0.2.6-3.tar.gz";
    sha256 = "7bb997b6e3e31963c2fc8e1186a6ee9f474147e49afdbbe512541a2db2a7ba4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components tuw-airskin-msgs tuw-geometry-msgs tuw-graph-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-map-msgs tuw-object-msgs tuw-std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "tuw_msgs meta package with write and read file libs for tuw_msgs";
    license = with lib.licenses; [ bsd3 ];
  };
}
