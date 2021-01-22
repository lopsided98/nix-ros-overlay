
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cost-map-core, cost-map-msgs, cost-map-ros, cost-map-visualisations }:
buildRosPackage {
  pname = "ros-kinetic-cost-map";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "b920058823f2256adbcd420f3619b9f4f594d6575c0bd1332781bb38e89ef990";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cost-map-core cost-map-msgs cost-map-ros cost-map-visualisations ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-package for the universal cost map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
