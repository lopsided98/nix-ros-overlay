
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-phidgets-spatial";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/rolling/phidgets_spatial/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "2501e496a87c16310b02e974063dc9862254ca866dee082550373984239ac845";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
