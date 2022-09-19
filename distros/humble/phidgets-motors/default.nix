
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-phidgets-motors";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_motors/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "f8005b7cd51dbf63de1341c96ff83526b89580554f7b5b21dcfb77210351de62";
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
