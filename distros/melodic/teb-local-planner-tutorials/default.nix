
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, stage-ros, teb-local-planner }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner-tutorials";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/melodic/teb_local_planner_tutorials/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "844e431b24ee4635946618da536b22f2571196f298e74b7715ee6a4f4cd42d1a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl map-server move-base stage-ros teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner_tutorials package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
