
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, osrf-pycommon, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "e52389adfc3b9f958f961e5ef09484a34266ef953d6b8740d149114d9f49e97d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python osrf-pycommon python3Packages.importlib-metadata python3Packages.lark python3Packages.pyyaml ];

  meta = {
    description = "The ROS launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
