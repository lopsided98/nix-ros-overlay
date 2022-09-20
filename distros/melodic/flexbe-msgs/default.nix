
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, rospy }:
buildRosPackage {
  pname = "ros-melodic-flexbe-msgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_msgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "b50c2b33386a9314ed984fe8fd9899940b45cede26ece3d7046054b5bb86cc48";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_msgs provides the messages used by FlexBE.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
