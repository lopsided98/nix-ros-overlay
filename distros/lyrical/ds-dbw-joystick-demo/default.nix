
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-msgs, joy, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ds-dbw-joystick-demo";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/lyrical/ds_dbw_joystick_demo/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "4371b2c9e2fc44bff16ed05b1e77fe47e4f0d3d23374ae0530b7405ef84fa448";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ds-dbw-can ds-dbw-msgs joy rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstration of drive-by-wire with joystick";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
