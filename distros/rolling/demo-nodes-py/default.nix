
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, example-interfaces, pythonPackages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-py";
  version = "0.35.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_py/0.35.1-1.tar.gz";
    name = "0.35.1-1.tar.gz";
    sha256 = "e80bdf7dba3a32f267524a972af9c00a57eda1d465f3f8c376246bcc11ce51b8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
