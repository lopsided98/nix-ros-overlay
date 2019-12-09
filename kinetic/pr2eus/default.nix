
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-msgs, roseus, pr2-msgs, dynamic-reconfigure, pr2-description, robot-state-publisher, move-base-msgs, catkin, pr2-gazebo, sound-play, euscollada, pr2-controllers-msgs, rosgraph-msgs, rostest, pr2-mechanism-msgs, control-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "a6906b637ec300d107a0000e0d245a418cbcac3d1c7b4a1a57d6662ac84fe894";
  };

  buildType = "catkin";
  buildInputs = [ nav-msgs pr2-msgs roseus pr2-description dynamic-reconfigure sound-play euscollada control-msgs pr2-controllers-msgs rosgraph-msgs pr2-mechanism-msgs move-base-msgs ];
  checkInputs = [ robot-state-publisher rostest pr2-gazebo ];
  propagatedBuildInputs = [ dynamic-reconfigure roseus pr2-description pr2-msgs sound-play euscollada control-msgs pr2-controllers-msgs nav-msgs pr2-mechanism-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
