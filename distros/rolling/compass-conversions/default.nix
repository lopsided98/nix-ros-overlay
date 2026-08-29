
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, angles, compass-interfaces, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, magnetic-model, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-compass-conversions";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/compass_conversions/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "2b88b52b8e7e701ea1995ffc4bb72e36de7d3c4fa0df8b5295dfc20705b162cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros cras-lint ];
  propagatedBuildInputs = [ angles compass-interfaces cras-cpp-common geographiclib geometry-msgs magnetic-model message-filters pluginlib rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Common conversions for compass data.";
    license = with lib.licenses; [ bsd3 ];
  };
}
