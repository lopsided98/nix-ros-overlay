
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, proj, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-satellite";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/rolling/rviz_satellite/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "a9ec0a09bc9b8d7df6debd28991e6877525b7d21ba564fe304d0be1617dec22c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles proj rclcpp rcpputils rviz-common rviz-default-plugins sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Display satellite map tiles in RViz";
    license = with lib.licenses; [ asl20 ];
  };
}
