
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-demo-nodes-py";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/demo_nodes_py/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "cc1e237a66ebe61ff40c27723c53672c42ebc6afc8f292e422d648b60c394af5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = ''Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
