
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-crystal-examples-rclpy-minimal-client";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/crystal/examples_rclpy_minimal_client/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "dd729504700ecf9699229a9537db7c2cde5976223ac12b319842bf5e83744ff6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal service clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
