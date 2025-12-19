
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, off-highway-premium-radar, off-highway-radar, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-off-highway-sensor-drivers-examples";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_sensor_drivers_examples/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "c59a16a29ce241953d1b036353bf8b6748266b1bd8bed934628d9b8929cb54f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs off-highway-premium-radar off-highway-radar rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_sensor_drivers_examples package";
    license = with lib.licenses; [ asl20 ];
  };
}
