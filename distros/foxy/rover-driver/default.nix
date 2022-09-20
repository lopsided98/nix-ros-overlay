
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, diagnostic-updater, eigen, nav-msgs, rclcpp, rover-msgs, std-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-foxy-rover-driver";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/RoverRobotics-release/roverrobotics_ros2-release/archive/release/foxy/rover_driver/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "cbf419b12e82a4843f01e69555f2a7a609736d02769fb3e5b0d58852c4582b8e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ diagnostic-updater eigen nav-msgs rclcpp rover-msgs std-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Serial driver for Rover platform.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
