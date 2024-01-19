
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, mbf-mesh-core, mbf-msgs, mbf-utility, mesh-map, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cvp-mesh-planner";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/cvp_mesh_planner/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "51975aa6b41005194eee9f02a08f7ca7dc6e490d18e354a989f161548e2fd2dc";
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
