
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rmf-visualization-building-systems";
  version = "2.5.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/lyrical/rmf_visualization_building_systems/2.5.1-3.tar.gz";
    name = "2.5.1-3.tar.gz";
    sha256 = "42ec0b0c6f4ebb3e69587a2ad61741aae03725f8f7d90ff12cc614925810ba44";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = "A visualizer for doors and lifts";
    license = with lib.licenses; [ asl20 ];
  };
}
