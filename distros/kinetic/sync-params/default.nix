
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, master-discovery-fkie, master-sync-fkie, message-generation, message-runtime, roscpp, roslaunch, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-sync-params";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/NicksSimulationsROS/sync_params-release/archive/release/kinetic/sync_params/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "489e901d3c30a154c755e7b88d86d05e0b5c9aecf2603a435af26f8f6285f60b";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ master-discovery-fkie master-sync-fkie message-generation message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Synchronises parameters across multiple masters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
