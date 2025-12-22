
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-pytorch-pip, _unresolved_python3-torch-geometric-pip, ament-copyright, ament-flake8, ament-pep257, python3Packages, situational-graphs-datasets, situational-graphs-msgs, situational-graphs-reasoning-msgs, situational-graphs-wrapper }:
buildRosPackage {
  pname = "ros-humble-situational-graphs-reasoning";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_reasoning-release/archive/release/humble/situational_graphs_reasoning/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "4044b0830fcf7947d9f54e93cd5ab0a08077747d770a25d2b4bba7d9b1621919";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ _unresolved_python3-pytorch-pip _unresolved_python3-torch-geometric-pip python3Packages.colorama python3Packages.matplotlib python3Packages.networkx python3Packages.numpy python3Packages.protobuf python3Packages.seaborn python3Packages.shapely situational-graphs-datasets situational-graphs-msgs situational-graphs-reasoning-msgs situational-graphs-wrapper ];

  meta = {
    description = "Graph reasoning for extracting semantic concepts using GNNs";
    license = with lib.licenses; [ gpl3Only ];
  };
}
