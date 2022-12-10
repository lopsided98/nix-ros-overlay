
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl-python, pythonPackages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-rolling-ros2launch-security";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/rolling/ros2launch_security/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "663e3ab054092002cc88ccd8aad644da8abee7f0abdba4d9e6b6a7aba3127b80";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros pythonPackages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl-python ros2launch sros2 ];

  meta = {
    description = ''Security extensions for ros2 launch'';
    license = with lib.licenses; [ asl20 ];
  };
}
