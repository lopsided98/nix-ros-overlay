
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, stage-ros, teb-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-teb-local-planner-tutorials";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/kinetic/teb_local_planner_tutorials/0.2.2-0.tar.gz;
    sha256 = "75b195b0d6d5ae5ca061aa79831f6f901aaf22288b29d0f50a019000c8aab678";
  };

  propagatedBuildInputs = [ map-server amcl move-base stage-ros teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
