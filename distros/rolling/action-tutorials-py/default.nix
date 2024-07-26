
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.34.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.34.1-1.tar.gz";
    name = "0.34.1-1.tar.gz";
    sha256 = "cd71e87a51622902886e5d9c2a3745304a0606afaffe07ece98de7c5a19ad2c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = "Python action tutorial code";
    license = with lib.licenses; [ asl20 ];
  };
}
