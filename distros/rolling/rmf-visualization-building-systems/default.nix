
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-building-systems";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_building_systems/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "e5ae281229c00c2f8892b8c27d6cf7133ef8f1f4db3e1e218c81b36e3aa9399f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = "A visualizer for doors and lifts";
    license = with lib.licenses; [ asl20 ];
  };
}
