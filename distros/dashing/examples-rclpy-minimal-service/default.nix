
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-service";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_service/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "3062f6c2b971e504756519acf4a4d385431e498a7fb2e325ce3af3e45739c1ec";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal service servers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
