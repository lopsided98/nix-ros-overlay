
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl-python, pythonPackages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-rolling-ros2launch-security";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/rolling/ros2launch_security/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "eef2b7c3fb7a55764bee30cd8a9eb35cdec819955f64fc6722c402eb1bafc910";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros pythonPackages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl-python ros2launch sros2 ];

  meta = {
    description = ''Security extensions for ros2 launch'';
    license = with lib.licenses; [ asl20 ];
  };
}
