
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, example-interfaces, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-crystal-demo-nodes-py";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/demos-release/archive/release/crystal/demo_nodes_py/0.6.2-0.tar.gz;
    sha256 = "cc1e237a66ebe61ff40c27723c53672c42ebc6afc8f292e422d648b60c394af5";
  };

  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy std-msgs example-interfaces ];

  meta = {
    description = ''Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
