
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-phidgets-spatial";
  version = "2.3.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/jazzy/phidgets_spatial/2.3.3-2.tar.gz";
    name = "2.3.3-2.tar.gz";
    sha256 = "d926d12a288c3373ada10985e2649490d073fc6a93fecb505b44c48e6856dd7c";
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
