
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, angles, qt5, rclcpp, rcpputils, rviz-common, rviz-default-plugins, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-rviz-satellite";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rviz_satellite-release/archive/release/iron/rviz_satellite/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "a9b65a45b2567aa9547109f92d767e1858e6c5f55320a57349aa2f5288437b1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake qt5.qtbase ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles rclcpp rcpputils rviz-common rviz-default-plugins sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Display satellite map tiles in RViz'';
    license = with lib.licenses; [ asl20 ];
  };
}
