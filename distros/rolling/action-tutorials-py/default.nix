
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.33.1-1.tar.gz";
    name = "0.33.1-1.tar.gz";
    sha256 = "f81d727e048acff048029a09fccf5096f5b8f91ad6ca815f79c92359586bc265";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
