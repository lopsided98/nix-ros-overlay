
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-py";
  version = "0.37.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_py/0.37.1-1.tar.gz";
    name = "0.37.1-1.tar.gz";
    sha256 = "420756b982c39542a1ee2795589adf3e1f6a8f2825eab01b91fdb76aa10924cd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
