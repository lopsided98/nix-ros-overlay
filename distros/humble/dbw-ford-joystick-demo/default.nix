
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-dbw-common, dbw-ford-can, dbw-ford-msgs, joy, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford-joystick-demo";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford_joystick_demo/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "e717f1d15cc3400cf0e55545ea2b567f1afa5f1d7c48fbe22ded4278170bf5aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-dbw-common dbw-ford-can dbw-ford-msgs joy rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstration of drive-by-wire with joystick";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
