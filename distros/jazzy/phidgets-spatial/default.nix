
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-spatial";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_spatial/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "6ed743aab6d81d3dd14c77012f2e6d4de7324ef7319670b75cf228259f389dee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Driver for the Phidgets Spatial 3/3/3 devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
