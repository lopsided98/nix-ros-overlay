
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, rclcpp-components, rclcpp-lifecycle, sensor-msgs, slg-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-laser-segmentation";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/laser_segmentation-release/archive/release/kilted/laser_segmentation/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "ef4b17899fcddf6a1e527b542e5573017cf379ea3df3d79f32e58c896aa9cc5f";
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
