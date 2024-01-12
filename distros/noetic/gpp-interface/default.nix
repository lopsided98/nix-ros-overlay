
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-gpp-interface";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/dorezyuk/gpp-release/archive/release/noetic/gpp_interface/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "9c4f61513b1a2712e2fa2ba302cb4b62147b0c3547a728fd39032fbdd368fdaf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpp_interface package defines the interfaces for
  pre and post-planning inside the global_planner_pipeline framework'';
    license = with lib.licenses; [ mit ];
  };
}
