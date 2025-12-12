
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, easynav-common, pcl-conversions, rclcpp, rclcpp-lifecycle, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-easynav-sensors";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_sensors/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9d3f8fe56b929a64c1a1340a4cfe6c73cdba3462ea0022e27cb6d93193475d46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common pcl-conversions ];
  propagatedBuildInputs = [ easynav-common rclcpp rclcpp-lifecycle sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Easy Navigation: Sensors package.";
    license = with lib.licenses; [ gpl3Only ];
  };
}
