
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rmf-visualization-building-systems";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/humble/rmf_visualization_building_systems/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "67921b36a3aa7987cc29ac420439c746382c4c844a13df0f37551bf4b8250bf2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = ''A visualizer for doors and lifts'';
    license = with lib.licenses; [ asl20 ];
  };
}
