
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, nav-msgs, message-runtime, std-msgs, genmsg, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-msgs";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_msgs/0.2.3-0.tar.gz;
    sha256 = "9ce647ffa0b672e1cda95157baf45218b9000882e3cad50dd384c5c59a5504da";
  };

  buildInputs = [ nav-msgs message-generation message-runtime actionlib-msgs std-msgs genmsg geometry-msgs ];
  propagatedBuildInputs = [ nav-msgs message-runtime actionlib-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_flex messages package providing the action definition files for the action GetPath, ExePath, Recovery and MoveBase. The action servers providing these action are implemented in <a href="http://wiki.ros.org/mbf_abstract_nav">mbf_abstract_nav</a>.'';
    #license = lib.licenses.3-Clause BSD;
  };
}
