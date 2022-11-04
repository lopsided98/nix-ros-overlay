
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, robot-state-publisher, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-igvc-self-drive-gazebo";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/robustify/igvc_self_drive_sim-release/archive/release/melodic/igvc_self_drive_gazebo/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "8b83406423a8bcc6de599c32df446a7165145353418a9c5e279c43a0b9f08e4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo models and runtime configuration for igvc_self_drive simulator'';
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
