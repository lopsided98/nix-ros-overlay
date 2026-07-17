
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, angles, compass-interfaces, cras-cpp-common, cras-lint, geographiclib, geometry-msgs, magnetic-model, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-compass-conversions";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/rolling/compass_conversions/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "39537c6a19caa24a04a1e6c721779cae462190831564be811e457b24403b413e";
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
