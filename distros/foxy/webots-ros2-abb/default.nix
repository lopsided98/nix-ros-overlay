
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, control-msgs, pythonPackages, rclpy, rosgraph-msgs, sensor-msgs, std-msgs, trajectory-msgs, webots-ros2-core }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-abb";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/cyberbotics/webots_ros2-release/archive/release/foxy/webots_ros2_abb/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "38b4719ce9a164bd1840d4b7c8326969115a6c3d78e14c7b38599d0b2756ecf4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces control-msgs rclpy rosgraph-msgs sensor-msgs std-msgs trajectory-msgs webots-ros2-core ];

  meta = {
    description = ''ABB robots ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
