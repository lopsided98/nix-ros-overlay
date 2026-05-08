
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, angles, builtin-interfaces, compass-conversions, compass-interfaces, cras-cpp-common, cras-lint, eigen, geometry-msgs, magnetometer-pipeline, message-filters, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-magnetometer-compass";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/compass-release/archive/release/lyrical/magnetometer_compass/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "f12222adfb85be6aa977a6b14038cfc9d5c6b7971bf3e2223f902da173af0369";
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
