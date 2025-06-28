
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, proj, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rviz-satellite";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/jazzy/rviz_satellite/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "73dbd8985cde8ff87b991b6ef85240a54051cab1ef46f2089c49bd7c899ef588";
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
