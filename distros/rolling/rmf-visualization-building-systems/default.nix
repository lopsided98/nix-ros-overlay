
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-building-systems";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_building_systems/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "e3904fd51e9be53f625e326e910b8097817108b1a6f566d8a09107c1e3b1640c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = "A visualizer for doors and lifts";
    license = with lib.licenses; [ asl20 ];
  };
}
