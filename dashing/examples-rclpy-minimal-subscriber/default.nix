
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-subscriber";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_subscriber/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "9f625789e172d97216608b9b0dcee900c0c3044879cea8ffd4d168469f735963";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal subscribers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
