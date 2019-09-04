
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, example-interfaces, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-minimal-client";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_minimal_client/0.7.4-1.tar.gz;
    sha256 = "ad40912665286999e4212a156cefdc723344df3502e8af2ea64c2a29eb4c2fdc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy std-msgs example-interfaces ];

  meta = {
    description = ''Examples of minimal service clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
