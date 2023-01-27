
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-ford-can, dbw-ford-msgs, joy, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-dbw-ford-joystick-demo";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dbw_ford_joystick_demo/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "82e092b76dfae26d5d564467bcafec1e8115e77c48dec6b8d8e00aa029f507f2";
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
