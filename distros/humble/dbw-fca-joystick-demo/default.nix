
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-fca-can, dbw-fca-msgs, joy, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca-joystick-demo";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca_joystick_demo/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "834f634706b0c173e411aae29abaebbbcb8a98d12430aa6f71d7f64ce5323aa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-dbw-common dbw-fca-can dbw-fca-msgs joy rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
