
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, ament-copyright, std-msgs, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-demo-nodes-py";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/demo_nodes_py/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "9249dac3459d311c4f07833c7e85605dd449a712df4eee518770e9736c360063";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ example-interfaces std-msgs rclpy ];

  meta = {
    description = ''Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
