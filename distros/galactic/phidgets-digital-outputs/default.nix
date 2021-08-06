
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-phidgets-digital-outputs";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_digital_outputs/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "96f686b37d6765153991b900204a3e545b4f78c13ed51d51d7bd6efed2841f75";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
