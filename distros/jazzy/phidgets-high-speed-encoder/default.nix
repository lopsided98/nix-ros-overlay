
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-high-speed-encoder";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_high_speed_encoder/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "a3ee90f3c5df6c268a6ac5bf2122bfd9fadb636b35e56dbc4054832f1da77c59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets high speed encoder devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
