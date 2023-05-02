
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, example-interfaces, pythonPackages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-py";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_py/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "8e801329170ecb6bbffa81697a8bcd37bc44d40531721e4cceb22d83797b7e8d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = ''Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
