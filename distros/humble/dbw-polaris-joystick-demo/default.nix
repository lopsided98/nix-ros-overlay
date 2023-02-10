
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-polaris-can, dbw-polaris-msgs, joy, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris-joystick-demo";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris_joystick_demo/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "872301d1189de912ff60b840d299ecc041945bf6cbc0cfea305aef9573feef57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-dbw-common dbw-polaris-can dbw-polaris-msgs joy rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
