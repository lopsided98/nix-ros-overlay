
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl-python, pythonPackages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-iron-ros2launch-security";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/iron/ros2launch_security/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "30302dbb78f240ab009af3d6bd008d507370490a5df9a32a8af906ab2cb220bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros pythonPackages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl-python ros2launch sros2 ];

  meta = {
    description = ''Security extensions for ros2 launch'';
    license = with lib.licenses; [ asl20 ];
  };
}
