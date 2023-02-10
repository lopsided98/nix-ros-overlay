
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-fca-can, dbw-fca-msgs, joy, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-joystick-demo";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_joystick_demo/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "4ee22bba8a68075fbb962bd5aa6d0330c4ec9f629ed7e3732b6a39b060d7a9bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-dbw-common dbw-fca-can dbw-fca-msgs joy rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
