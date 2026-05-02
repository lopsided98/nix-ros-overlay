
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, off-highway-premium-radar, off-highway-radar, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-rolling-off-highway-sensor-drivers-examples";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_sensor_drivers_examples/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "9ae5694adf42b80891177105235913d8867478ac9d7477a621c9a5c41ef24a5b";
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
