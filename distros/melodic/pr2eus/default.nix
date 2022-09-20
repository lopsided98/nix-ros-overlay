
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, dynamic-reconfigure, euscollada, move-base-msgs, nav-msgs, pr2-controllers-msgs, pr2-description, pr2-gazebo, pr2-mechanism-msgs, pr2-msgs, robot-state-publisher, roseus, rosgraph-msgs, rostest, sound-play }:
buildRosPackage {
  pname = "ros-melodic-pr2eus";
  version = "0.3.14-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/melodic/pr2eus/0.3.14-3.tar.gz";
    name = "0.3.14-3.tar.gz";
    sha256 = "893fd05c7b1c9fce063437fe74f2eae8c9fe750a2a85f5bac5413fafd88dd710";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosgraph-msgs ];
  checkInputs = [ pr2-gazebo robot-state-publisher rostest ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure euscollada move-base-msgs nav-msgs pr2-controllers-msgs pr2-description pr2-mechanism-msgs pr2-msgs roseus sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
