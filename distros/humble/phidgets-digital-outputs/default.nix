
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, phidgets-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-humble-phidgets-digital-outputs";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_digital_outputs/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "d5a614ccf98f3a6738feb4f40a5f08e910ed72d2ef1249cd5c98cb851e7e2ca8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api phidgets-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Digital Output devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
