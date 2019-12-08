
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, phidgets-api, sensor-msgs, launch, rclcpp, ament-cmake-ros, std-msgs, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-phidgets-gyroscope";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/dashing/phidgets_gyroscope/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "385bbfab6f93ed22993d429902a1f8ca7a4bb8d61c12c5bac2d0d7678495a251";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-srvs phidgets-api sensor-msgs rclcpp std-msgs rclcpp-components ];
  propagatedBuildInputs = [ std-srvs phidgets-api sensor-msgs launch rclcpp std-msgs rclcpp-components ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Driver for the Phidgets Gyroscope devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
