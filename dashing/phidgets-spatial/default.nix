
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, launch, rclcpp-components, std-msgs, std-srvs, phidgets-api, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-phidgets-spatial";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_spatial/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "648e62d4392289d5f254d77ade082c4a87721e5c589cbcb9a78f8628ab799f0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp-components std-msgs std-srvs phidgets-api rclcpp ];
  propagatedBuildInputs = [ sensor-msgs rclcpp-components launch std-msgs std-srvs phidgets-api rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Spatial 3/3/3 devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
