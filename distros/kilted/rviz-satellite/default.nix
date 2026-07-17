
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, proj, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rviz-satellite";
  version = "4.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_satellite-release/archive/release/kilted/rviz_satellite/4.3.1-1.tar.gz";
    name = "4.3.1-1.tar.gz";
    sha256 = "afeed037928f49e1b6e0cc4c96fdf693aff0605b412741e4ccc9c1e9db880b27";
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
