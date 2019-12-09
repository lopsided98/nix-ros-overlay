
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, actionlib, catkin, actionlib-msgs, pr2-controllers-msgs, rospy, pr2-common-action-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-tuck-arms-action";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_tuck_arms_action/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "12d791a5cb70ca8bce9093e6dddc5cd0fc718b1d440f62c6006071bd736629e7";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs actionlib actionlib-msgs pr2-controllers-msgs rospy pr2-common-action-msgs ];
  propagatedBuildInputs = [ trajectory-msgs actionlib actionlib-msgs pr2-controllers-msgs rospy pr2-common-action-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_tuck_arms_action package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
