
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, launch, phidgets-api, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-galactic-phidgets-gyroscope";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/galactic/phidgets_gyroscope/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "bc3d6746f21fb61a2a25237fb0dfd8538f7efe6bdc8d75928491aa31403002e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ launch phidgets-api rclcpp rclcpp-components sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
