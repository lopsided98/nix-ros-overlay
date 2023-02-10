
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-ford-can, dbw-ford-msgs, joy, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-joystick-demo";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_joystick_demo/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "3fe4e461c3bd9ab7052cf9c68a27300d3576f5aa6ee863cedd887ca04ad84c63";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-dbw-common dbw-ford-can dbw-ford-msgs joy rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
