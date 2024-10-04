
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-msgs, joy, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ds-dbw-joystick-demo";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/jazzy/ds_dbw_joystick_demo/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "4851866ce85fb888edcbb094ef9e3ff1ec2a2441049e817a82244b599f591e97";
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
