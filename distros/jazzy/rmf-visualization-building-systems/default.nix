
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rmf-visualization-building-systems";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/jazzy/rmf_visualization_building_systems/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "e6cb052552951f581ff1edddd15a78a69f9a4c97ebfffe33cb0fc9545f2f904d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = "A visualizer for doors and lifts";
    license = with lib.licenses; [ asl20 ];
  };
}
