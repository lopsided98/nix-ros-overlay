
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-phidgets-digital-outputs";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_digital_outputs/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "2946b534c41f492d753ed9a09627e2ba219b1c3cddfe3c3fa78861e55f97f64e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
