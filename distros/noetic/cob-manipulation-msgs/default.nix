
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, moveit-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-manipulation-msgs";
  version = "0.7.6-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_manipulation-release/archive/release/noetic/cob_manipulation_msgs/0.7.6-2.tar.gz";
    name = "0.7.6-2.tar.gz";
    sha256 = "316c86387cf2b7fac6d808ca2ba90f93476576cd36951284e9d7d4223f102231";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime moveit-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for cob_manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
