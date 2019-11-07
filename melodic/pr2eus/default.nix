
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, pr2-mechanism-msgs, pr2-controllers-msgs, control-msgs, pr2-description, euscollada, catkin, sound-play, move-base-msgs, rosgraph-msgs, pr2-gazebo, nav-msgs, rostest, robot-state-publisher, dynamic-reconfigure, pr2-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2eus";
  version = "0.3.14-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/melodic/pr2eus/0.3.14-3.tar.gz";
    name = "0.3.14-3.tar.gz";
    sha256 = "893fd05c7b1c9fce063437fe74f2eae8c9fe750a2a85f5bac5413fafd88dd710";
  };

  buildType = "catkin";
  buildInputs = [ roseus pr2-mechanism-msgs pr2-controllers-msgs control-msgs euscollada pr2-description sound-play move-base-msgs rosgraph-msgs nav-msgs dynamic-reconfigure pr2-msgs ];
  checkInputs = [ rostest pr2-gazebo robot-state-publisher ];
  propagatedBuildInputs = [ roseus pr2-mechanism-msgs pr2-controllers-msgs pr2-description euscollada control-msgs sound-play move-base-msgs nav-msgs dynamic-reconfigure pr2-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
