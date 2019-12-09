
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, std-srvs, catkin, rospy, cob-light, cob-script-server }:
buildRosPackage {
  pname = "ros-melodic-cob-default-robot-behavior";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/melodic/cob_default_robot_behavior/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "ee468816025bfbdd6d464d29a06086647132c3a123eb97ce24677f4f913d54b7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ std-msgs std-srvs rospy cob-light cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_default_robot_behavior package'';
    license = with lib.licenses; [ asl20 ];
  };
}
