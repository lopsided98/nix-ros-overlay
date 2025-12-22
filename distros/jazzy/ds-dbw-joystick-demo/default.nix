
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-msgs, joy, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ds-dbw-joystick-demo";
  version = "2.3.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/jazzy/ds_dbw_joystick_demo/2.3.10-1.tar.gz";
    name = "2.3.10-1.tar.gz";
    sha256 = "535be6f518bc5cc6dd3f86e19485c2171a69191a0c5ff33ad3c5f3472d81632b";
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
