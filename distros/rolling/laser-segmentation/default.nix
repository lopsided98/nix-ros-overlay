
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, slg-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-laser-segmentation";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_segmentation-release/archive/release/rolling/laser_segmentation/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "3d531e815b43511d54b60c10c93a698c7cd0e27ad904e348bc0521359969d12c";
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
