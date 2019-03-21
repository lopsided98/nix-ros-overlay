
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, dynamic-reconfigure, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-ar-pair-approach";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_ar_pair_approach/0.8.2-0.tar.gz;
    sha256 = "57ea6195fb9edc5fd0e5a0e89a7c82773a4a809b56a85fa6cd396c88bbd5a6f9";
  };

  propagatedBuildInputs = [ rospy std-msgs dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Search and approach behaviour, moving to a target in front of a pair of ar markers.'';
    #license = lib.licenses.BSD;
  };
}
