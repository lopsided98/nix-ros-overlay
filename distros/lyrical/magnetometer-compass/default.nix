
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, angles, builtin-interfaces, compass-conversions, compass-interfaces, cras-cpp-common, cras-lint, eigen, geometry-msgs, magnetometer-pipeline, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-magnetometer-compass";
  version = "3.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/lyrical/magnetometer_compass/3.0.2-3.tar.gz";
    name = "3.0.2-3.tar.gz";
    sha256 = "9ab9ef5b96b337d7e72a508ce78b80c7136a9d321f66d12ba68fc30a7b2a83f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros builtin-interfaces cras-lint ];
  propagatedBuildInputs = [ angles compass-conversions compass-interfaces cras-cpp-common eigen geometry-msgs magnetometer-pipeline message-filters pluginlib rclcpp rclcpp-components sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Compass based on a 3-axis magnetometer, attitude readings and possibly also GNSS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
