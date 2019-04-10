
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, stage-ros, teb-local-planner }:
buildRosPackage {
  pname = "ros-lunar-teb-local-planner-tutorials";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/lunar/teb_local_planner_tutorials/0.2.2-0.tar.gz;
    sha256 = "a59cf4c60412855eb72058096d20eaffbac92a986ddca4d2e346ed4a6f139e03";
  };

  propagatedBuildInputs = [ stage-ros map-server amcl teb-local-planner move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
