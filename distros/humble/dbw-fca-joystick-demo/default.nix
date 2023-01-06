
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-fca-can, dbw-fca-msgs, joy, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-joystick-demo";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_joystick_demo/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8a626393754b22073e53ae5695b103c24add8dc1ffb16655546fb4c12f5813db";
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
