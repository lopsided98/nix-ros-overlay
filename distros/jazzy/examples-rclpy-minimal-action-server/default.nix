
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-examples-rclpy-minimal-action-server";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/jazzy/examples_rclpy_minimal_action_server/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "51ace828921c1e64c6338c8fe77e37f7aca159d3746b39ed60e14d5315988e1b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy ];

  meta = {
    description = "Examples of minimal action servers using rclpy.";
    license = with lib.licenses; [ asl20 ];
  };
}
