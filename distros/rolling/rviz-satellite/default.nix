
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, proj, qt6, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rviz-satellite";
  version = "4.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rviz_satellite-release/archive/release/rolling/rviz_satellite/4.4.0-1.tar.gz";
    name = "4.4.0-1.tar.gz";
    sha256 = "8d53138b3fa91018fab6a176804b886f0a4400fcd7967a04f1d617b782c51aeb";
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
