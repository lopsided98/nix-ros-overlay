
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-phidgets-high-speed-encoder";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_high_speed_encoder/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "b56a14cebb4dc02cd3f4dce5f3caf619a4cb2f10ed0e59d744ec4686c8e7aa8b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
