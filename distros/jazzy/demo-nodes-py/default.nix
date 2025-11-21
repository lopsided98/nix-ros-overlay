
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, example-interfaces, python3Packages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-demo-nodes-py";
  version = "0.33.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/jazzy/demo_nodes_py/0.33.8-1.tar.gz";
    name = "0.33.8-1.tar.gz";
    sha256 = "f91349448a64e43855470cf2c5e5961fce305a9f700baa2ed73e490119af798d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
