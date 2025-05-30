
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-temperature";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_temperature/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "f044935d68605022c4c878349f8b09e61f26e1c992ab6f5c010a29c7e8356a24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Temperature devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
