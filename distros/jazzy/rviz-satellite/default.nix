
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, proj, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rviz-satellite";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_satellite-release/archive/release/jazzy/rviz_satellite/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "aa8f52e1ae70b40cb0ebf2369b641d6c1d4308a1c19302b5a3075b000d7a33a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ angles proj rclcpp rcpputils rviz-common rviz-default-plugins sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Display satellite map tiles in RViz";
    license = with lib.licenses; [ asl20 ];
  };
}
