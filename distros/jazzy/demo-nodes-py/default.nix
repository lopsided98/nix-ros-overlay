
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, example-interfaces, python3Packages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-demo-nodes-py";
  version = "0.33.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/demo_nodes_py/0.33.9-1.tar.gz";
    name = "0.33.9-1.tar.gz";
    sha256 = "931a58cbe23db2b0a6b10d5eff4dbdcc14506c29bbd1a20dd827794d2e3ae963";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
