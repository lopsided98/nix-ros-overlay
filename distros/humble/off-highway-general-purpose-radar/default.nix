
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-general-purpose-radar-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-off-highway-general-purpose-radar";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_general_purpose_radar/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "0a7fac693933928c1a871017dd8bab92df291eed3438a0bf75c46e40ed22cc9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-general-purpose-radar-msgs rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_general_purpose_radar package";
    license = with lib.licenses; [ asl20 ];
  };
}
