
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-polaris-can, dbw-polaris-msgs, joy, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-polaris-joystick-demo";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_polaris_joystick_demo/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "10de41588b0093ad0d5c40b1b586dc1c36f5602383e6e0d4433a824c88434578";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-dbw-common dbw-polaris-can dbw-polaris-msgs joy rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstration of drive-by-wire with joystick";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
