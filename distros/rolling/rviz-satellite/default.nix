
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, proj, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-satellite";
  version = "4.2.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/rolling/rviz_satellite/4.2.1-1.tar.gz";
    name = "4.2.1-1.tar.gz";
    sha256 = "f9209f98bdc0e457d0b38a81ea691c9adbf12ff4675210880b2de5e3c7940044";
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
