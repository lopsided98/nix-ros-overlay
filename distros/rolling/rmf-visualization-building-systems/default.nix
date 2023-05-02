
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-building-systems";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/rolling/rmf_visualization_building_systems/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "0f7b8ead31542f0bf98421b645747e72f6e6ddf6b1133556685ecefbb260f8bd";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = ''A visualizer for doors and lifts'';
    license = with lib.licenses; [ asl20 ];
  };
}
