
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, launch, rclcpp, ament-cmake-ros, std-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-digital-inputs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_digital_inputs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "300ce16fa46296560431d8b3c489f6cc8db3b955bc3c30c4a9ffc0b5d1ac9144";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs phidgets-api rclcpp-components rclcpp ];
  propagatedBuildInputs = [ phidgets-api launch rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Digital Input devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
