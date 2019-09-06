
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, master-sync-fkie, catkin, message-generation, std-msgs, message-runtime, master-discovery-fkie, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-sync-params";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/NicksSimulationsROS/sync_params-release/archive/release/kinetic/sync_params/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "489e901d3c30a154c755e7b88d86d05e0b5c9aecf2603a435af26f8f6285f60b";
  };

  buildType = "catkin";
  buildInputs = [ master-sync-fkie master-discovery-fkie message-generation message-runtime std-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ master-sync-fkie master-discovery-fkie message-generation message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronises parameters across multiple masters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
