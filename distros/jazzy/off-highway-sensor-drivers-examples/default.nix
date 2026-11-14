
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, off-highway-premium-radar, off-highway-radar, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-jazzy-off-highway-sensor-drivers-examples";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/jazzy/off_highway_sensor_drivers_examples/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "77cfc9b0a362bc6adf6b55b2856e23cf3ef528c152bfff4b6b724eea1c71c942";
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
