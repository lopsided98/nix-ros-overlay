
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-phidgets-spatial";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_spatial/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "e8ef67620eafb764fdd5f9ea36734bb386acda5c751ee11dba8d5891a09244e0";
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
