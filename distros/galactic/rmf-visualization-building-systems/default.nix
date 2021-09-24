
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rmf-building-map-msgs, rmf-door-msgs, rmf-lift-msgs, rmf-visualization-msgs }:
buildRosPackage {
  pname = "ros-galactic-rmf-visualization-building-systems";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization-release/archive/release/galactic/rmf_visualization_building_systems/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "804490fae8f04bd0279784a57209e5173fbc3998e82f64cae1e93a9db990b9a7";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rmf-building-map-msgs rmf-door-msgs rmf-lift-msgs rmf-visualization-msgs ];

  meta = {
    description = ''A visualizer for doors and lifts'';
    license = with lib.licenses; [ asl20 ];
  };
}
