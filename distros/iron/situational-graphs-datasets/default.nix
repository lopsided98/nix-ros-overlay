
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-situational-graphs-datasets";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_dataset-release/archive/release/iron/situational_graphs_datasets/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "ea54b748c5b2969edb07eb271426b7384ac6906ff1d4684e66ba9c558ad46632";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.matplotlib ];

  meta = {
    description = "Graph datasets for situational_graphs_reasoning repo";
    license = with lib.licenses; [ gpl3Only ];
  };
}
