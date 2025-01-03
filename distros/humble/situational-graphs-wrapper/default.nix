
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages }:
buildRosPackage {
  pname = "ros-humble-situational-graphs-wrapper";
  version = "0.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/situational_graphs_wrapper-release/archive/release/humble/situational_graphs_wrapper/0.0.0-1.tar.gz";
    name = "0.0.0-1.tar.gz";
    sha256 = "1edf85dfe65291636f264a59b217fa97cd1b2bd5c1c1d016618d110149993ce9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];

  meta = {
    description = "Graph wrapper for situational_graphs_wrapper repo";
    license = with lib.licenses; [ gpl3Only ];
  };
}
