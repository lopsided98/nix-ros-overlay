
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-igvc-self-drive-gazebo";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/robustify/igvc_self_drive_sim-release/archive/release/kinetic/igvc_self_drive_gazebo/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "d0282af6c542c255da6411c3c874f37e810ef0febeb8cce759adba28b49c3061";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo models and runtime configuration for igvc_self_drive simulator'';
    license = with lib.licenses; [ bsd2 ];
  };
}
