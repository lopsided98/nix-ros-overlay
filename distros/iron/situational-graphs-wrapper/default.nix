
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-situational-graphs-wrapper";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_wrapper-release/archive/release/iron/situational_graphs_wrapper/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "9733a70b3320a22565cf0b898a1c2a43707416950cee2e3da36a1e83afc82afc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];

  meta = {
    description = "Graph wrapper for situational_graphs_wrapper repo";
    license = with lib.licenses; [ gpl3Only ];
  };
}
