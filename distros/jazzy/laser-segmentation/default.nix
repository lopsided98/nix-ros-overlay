
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, slg-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-laser-segmentation";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_segmentation-release/archive/release/jazzy/laser_segmentation/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "7afa9eef0378d70a976724e7136e4d792f057cc27feecdf94cb4dae1b973b88d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rclcpp-components rclcpp-lifecycle sensor-msgs slg-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Implementation of algorithms for segmentation of laserscans.";
    license = with lib.licenses; [ asl20 ];
  };
}
