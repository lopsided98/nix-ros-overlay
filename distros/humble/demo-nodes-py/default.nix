
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-demo-nodes-py";
  version = "0.20.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/demo_nodes_py/0.20.10-1.tar.gz";
    name = "0.20.10-1.tar.gz";
    sha256 = "1b5081263836d350cb28de07cbc7f5cbf071d09a1d2cdd17a8d6e248edd65fde";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
