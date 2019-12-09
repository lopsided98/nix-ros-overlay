
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rclcpp-components, phidgets-msgs, std-msgs, launch, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-digital-outputs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_digital_outputs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ab5ab6c260f73517d8eb3cfdbb495c5292badac90cebf26128e7e3a8de4917bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-components phidgets-msgs std-msgs phidgets-api rclcpp ];
  propagatedBuildInputs = [ rclcpp-components launch std-msgs phidgets-msgs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Output devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
