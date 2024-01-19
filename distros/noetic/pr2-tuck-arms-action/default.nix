
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, pr2-common-action-msgs, pr2-controllers-msgs, rospy, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-tuck-arms-action";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/pr2_tuck_arms_action/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "6d220c5c9a5d796989de37b20bf5532a64eb4142693572be34ac96e70047e158";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs pr2-common-action-msgs pr2-controllers-msgs rospy trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_tuck_arms_action package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
