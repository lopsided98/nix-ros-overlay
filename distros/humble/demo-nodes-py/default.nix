
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-demo-nodes-py";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/demo_nodes_py/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "5ca42db70fe6c8add39a2417ae7f5646db08aeb149d09e794b1ca84b6d90aad3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
