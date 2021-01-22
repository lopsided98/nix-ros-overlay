
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, dynamic-reconfigure, euscollada, move-base-msgs, nav-msgs, pr2-controllers-msgs, pr2-description, pr2-gazebo, pr2-mechanism-msgs, pr2-msgs, robot-state-publisher, roseus, rosgraph-msgs, rostest, sound-play }:
buildRosPackage {
  pname = "ros-kinetic-pr2eus";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "a6906b637ec300d107a0000e0d245a418cbcac3d1c7b4a1a57d6662ac84fe894";
  };

  buildType = "catkin";
  buildInputs = [ rosgraph-msgs ];
  checkInputs = [ pr2-gazebo robot-state-publisher rostest ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure euscollada move-base-msgs nav-msgs pr2-controllers-msgs pr2-description pr2-mechanism-msgs pr2-msgs roseus sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
