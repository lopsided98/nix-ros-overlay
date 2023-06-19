
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-phidgets-gyroscope";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/iron/phidgets_gyroscope/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "c67c99be54307517f3dd541759557f793c70e1049e6849800db21f634ff78a20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
