
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, off-highway-premium-radar, off-highway-radar, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-off-highway-sensor-drivers-examples";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_sensor_drivers_examples/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "c18c6cf0d9a115fb88962d1dcaf17ce32ac7f3b43842fcc0534a8e795be6b2dd";
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
