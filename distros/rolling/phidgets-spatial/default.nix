
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-spatial";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_spatial/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "ae6d395ec5a3dea746db6c0b4b49c66775c13b3972f8b6979014bd34ca411f3d";
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
