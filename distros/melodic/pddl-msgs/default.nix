
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-pddl-msgs";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/melodic/pddl_msgs/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "44eaf9851a6ce49a825dacbd6ed4ae64ac09161024121ae261ed5923e50fa52d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''message for pddl planner'';
    license = with lib.licenses; [ asl20 ];
  };
}
