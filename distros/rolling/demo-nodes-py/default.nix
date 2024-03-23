
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, example-interfaces, pythonPackages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-py";
  version = "0.33.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_py/0.33.1-2.tar.gz";
    name = "0.33.1-2.tar.gz";
    sha256 = "e11c883d2638836e301b923350137d282c57f75790ed0a845b142839d2ef7848";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
