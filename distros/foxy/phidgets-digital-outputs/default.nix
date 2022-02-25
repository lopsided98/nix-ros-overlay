
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-phidgets-digital-outputs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/foxy/phidgets_digital_outputs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "536cc54b9af1e0fc389e8fa446017326c97da12e359901b59e6f95c741a6948d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
