
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-iron-phidgets-spatial";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/iron/phidgets_spatial/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "296213799ed4f3060f44566fed36cdf5623d62a1cd647a6fb096c4005959fec6";
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
