
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, amcl, catkin, move-base, stage-ros, teb-local-planner }:
buildRosPackage {
  pname = "ros-melodic-teb-local-planner-tutorials";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/rst-tu-dortmund/teb_local_planner_tutorials-release/archive/release/melodic/teb_local_planner_tutorials/0.2.3-0.tar.gz;
    sha256 = "0a565d87f210b89666efd8a62608439a79462561b64a5fa731756ec5af290b37";
  };

  propagatedBuildInputs = [ stage-ros map-server amcl teb-local-planner move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The teb_local_planner_tutorials package'';
    #license = lib.licenses.BSD;
  };
}
