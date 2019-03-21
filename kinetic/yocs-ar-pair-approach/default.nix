
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, dynamic-reconfigure, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-ar-pair-approach";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_ar_pair_approach/0.8.2-0.tar.gz;
    sha256 = "4c12fa754a0ff4d956825fddcceafffb04f29a893c3706bd94bbe5740b3730bc";
  };

  propagatedBuildInputs = [ rospy std-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Search and approach behaviour, moving to a target in front of a pair of ar markers.'';
    #license = lib.licenses.BSD;
  };
}
