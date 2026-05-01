
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, slg-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-laser-segmentation";
  version = "3.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_segmentation-release/archive/release/lyrical/laser_segmentation/3.0.2-3.tar.gz";
    name = "3.0.2-3.tar.gz";
    sha256 = "15d7494acef192c3bc2cb06740fcff8913264ada94b3929a9ac1454ff58a6c4d";
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
