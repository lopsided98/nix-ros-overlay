
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, genmsg, geometry-msgs, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-mbf-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ebb9fb21336bf09cf9fb28dab78d7b1a4e0b1a559ae7f9b3cdaca634c952bf00";
  };

  buildType = "catkin";
  buildInputs = [ genmsg message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_flex messages package providing the action definition files for the action GetPath, ExePath, Recovery and MoveBase. The action servers providing these action are implemented in <a href="http://wiki.ros.org/mbf_abstract_nav">mbf_abstract_nav</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
