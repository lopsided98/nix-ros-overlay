
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cvp-mesh-planner";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/melodic/cvp_mesh_planner/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c9fddab14156e516e7f3006b6e2b97f5dd197ef85a0e2cf00f70434bde972708";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure mbf-mesh-core mbf-msgs mbf-utility mesh-map roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Continuous Vector Field Planner (CVP) mesh planner package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
