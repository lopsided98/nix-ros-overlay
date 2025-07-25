
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-phidgets-magnetometer";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_magnetometer/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "ab53308a1b93bea21c0796945fdbec3446b81ef9ad0319378ab6a1e4f79775da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Magnetometer devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
