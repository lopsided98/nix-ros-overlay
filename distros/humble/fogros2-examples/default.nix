
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-fogros2-examples";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fogros2-release/archive/release/humble/fogros2_examples/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "67f26be1f643fa7c9edfb626dcf106a97d0076bfba550e7c7a5390f91c7a06f8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = ''Examples using FogROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
