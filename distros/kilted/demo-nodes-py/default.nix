
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-demo-nodes-py";
  version = "0.36.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/kilted/demo_nodes_py/0.36.1-1.tar.gz";
    name = "0.36.1-1.tar.gz";
    sha256 = "e40e0a0c11b5f0e774149cbc7c72b4c803bb67ee5cc0ec1f5b3beae2fe3f98ed";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
