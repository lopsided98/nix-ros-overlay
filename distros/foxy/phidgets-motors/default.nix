
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-phidgets-motors";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/foxy/phidgets_motors/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "9dc4a63d173cc2d092731fbf808a8755cfc1bcb39d8b0370cf33852248a1bef8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Motor devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
