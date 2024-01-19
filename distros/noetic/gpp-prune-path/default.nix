
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gpp-interface, pluginlib, rostest }:
buildRosPackage {
  pname = "ros-noetic-gpp-prune-path";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/dorezyuk/gpp-release/archive/release/noetic/gpp_prune_path/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "0b3763073ad4c87a271cdc52bf8e10d0b10210512cd6b073f093afab74fbc390";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ gpp-interface pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The gpp_prune_path plugin will prune the path produced by a global-planner'';
    license = with lib.licenses; [ mit ];
  };
}
