
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-phidgets-digital-inputs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/eloquent/phidgets_digital_inputs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "20b05dbe5ef02ffd14f4fe04cf07a8cbe617d318ce03db652e912faa7b3fbc95";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
