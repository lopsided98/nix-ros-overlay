
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, example-interfaces, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-demo-nodes-py";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/demo_nodes_py/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "6c64774f5cf5a22b5674caadcfa7471d909b2daf5650abf1045d37f16d995c8d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy std-msgs example-interfaces ];

  meta = {
    description = ''Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
