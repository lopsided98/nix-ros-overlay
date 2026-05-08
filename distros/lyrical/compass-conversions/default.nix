
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, angles, compass-interfaces, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, magnetic-model, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-compass-conversions";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/lyrical/compass_conversions/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "12bd004e56068a14f6d5ad3b33e3555ee3e17e1caef60a05d74c0bb536380cfc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint ];
  propagatedBuildInputs = [ angles compass-interfaces cras-cpp-common geographiclib geometry-msgs magnetic-model message-filters pluginlib rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Common conversions for compass data.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
