
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, stage-ros, teb-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-teb-local-planner-tutorials";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/kinetic/teb_local_planner_tutorials/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "1f85cd7463e8c77f0c39419636f1c0f12e471eba325e323b1f615f08882dffe4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl map-server move-base stage-ros teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
