
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, off-highway-can, off-highway-mm7p10-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-rolling-off-highway-mm7p10";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/rolling/off_highway_mm7p10/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f5965f80cada89e337bb57c723c421a3ab1e84f63b84936e2bb0c7458e824bdc";
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
