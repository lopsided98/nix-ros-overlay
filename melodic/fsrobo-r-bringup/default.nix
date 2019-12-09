
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-state-publisher, fsrobo-r-moveit-config, catkin, fsrobo-r-description, fsrobo-r-driver, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fsrobo-r-bringup";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/melodic/fsrobo_r_bringup/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "6488f5bedd8e129d9de9bd6e2e39c49e79f314b5f429caed4cea410fc838e1b1";
  };

  buildType = "catkin";
  buildInputs = [ robot-state-publisher fsrobo-r-moveit-config fsrobo-r-description fsrobo-r-driver tf2-ros ];
  propagatedBuildInputs = [ robot-state-publisher fsrobo-r-moveit-config fsrobo-r-description fsrobo-r-driver tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_bringup package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
