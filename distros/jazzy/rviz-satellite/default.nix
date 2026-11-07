
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, proj, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rviz-satellite";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_satellite-release/archive/release/jazzy/rviz_satellite/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "256afba78d128fe1992397055738a175c33831cdba5de7206be1ded6b2cc390e";
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
