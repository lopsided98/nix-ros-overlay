
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-mm7p10-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-lyrical-off-highway-mm7p10";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/lyrical/off_highway_mm7p10/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "d1eb1668171ffc0e109ede8f7b9fb7267c6e24e23492f9207b45997a98949153";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-ros ament-lint-auto ament-lint-common tf2-geometry-msgs ];
  propagatedBuildInputs = [ can-msgs off-highway-can off-highway-mm7p10-msgs rclcpp rclcpp-components sensor-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_mm7p10 package";
    license = with lib.licenses; [ asl20 ];
  };
}
