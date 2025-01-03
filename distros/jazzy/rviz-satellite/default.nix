
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rviz-satellite";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/jazzy/rviz_satellite/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "dacfd0a51db37aacd1aa3b950688d3eb1255e8196550b868c300fd9398068b87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles rclcpp rcpputils rviz-common rviz-default-plugins sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Display satellite map tiles in RViz";
    license = with lib.licenses; [ asl20 ];
  };
}
