
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-xml";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_xml/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "493fc472ba181b096f1ee15ea787f6c5607247e37ea02ed5f9a9d82f8e04b8d5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''XML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
