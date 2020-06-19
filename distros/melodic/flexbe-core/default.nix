
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, flexbe-msgs, rospy, rostest, smach-ros, tf }:
buildRosPackage {
  pname = "ros-melodic-flexbe-core";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_core/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "d4dffbd00d25778acb53b74ffc939b32605f877a9967a635247018e1556ea28a";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ diagnostic-msgs flexbe-msgs rospy smach-ros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_core provides the core smach extension for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
