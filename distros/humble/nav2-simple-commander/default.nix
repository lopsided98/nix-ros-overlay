
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, lifecycle-msgs, nav2-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-nav2-simple-commander";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_simple_commander/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "dbba50ec6336faf8eb13d77023e61d802e428955ec56203eb5fc835e91619301";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs geometry-msgs lifecycle-msgs nav2-msgs rclpy ];

  meta = {
    description = ''An importable library for writing mobile robot applications in python3'';
    license = with lib.licenses; [ asl20 ];
  };
}
