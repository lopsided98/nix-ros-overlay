
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, grbl-msgs, python3Packages, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-grbl-ros";
  version = "0.0.16-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_ros-release/archive/release/humble/grbl_ros/0.0.16-4.tar.gz";
    name = "0.0.16-4.tar.gz";
    sha256 = "f9d11fea7c4cb74b031680f22e26c343703413aad26220231ce1373edfd508fb";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyserial ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ grbl-msgs rclpy std-msgs ];

  meta = {
    description = ''ROS2 package to interface with a GRBL serial device'';
    license = with lib.licenses; [ mit ];
  };
}
