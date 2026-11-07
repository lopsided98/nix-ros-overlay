
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, proj, qt6, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rviz-satellite";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_satellite-release/archive/release/lyrical/rviz_satellite/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "e6c0ca6b6f8832c6030cf18cd52fb70525aae5047527ebb2fc6896975363cef9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt6.qtbase ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ angles proj rclcpp rcpputils rviz-common rviz-default-plugins sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Display satellite map tiles in RViz";
    license = with lib.licenses; [ asl20 ];
  };
}
