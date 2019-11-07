
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, nav-msgs, message-runtime, std-msgs, genmsg, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mbf-msgs";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_msgs/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "bd33e16df6541fd87dc9fd0a52283a64c0bcb674d849020f3397c5256a2cfa45";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs nav-msgs message-generation message-runtime std-msgs genmsg geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs nav-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base_flex messages package providing the action definition files for the action GetPath, ExePath, Recovery and MoveBase. The action servers providing these action are implemented in <a href="http://wiki.ros.org/mbf_abstract_nav">mbf_abstract_nav</a>.'';
    license = with lib.licenses; [ "3-Clause BSD" ];
  };
}
