
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-rmf-visualization-building-systems";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/iron/rmf_visualization_building_systems/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "05487916e63204d7c9d1f2a4b218a3cf7064b73809f552f96d4384153004cbd4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = "A visualizer for doors and lifts";
    license = with lib.licenses; [ asl20 ];
  };
}
