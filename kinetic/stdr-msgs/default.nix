
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, nav-msgs, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-stdr-msgs";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_msgs/0.3.2-0.tar.gz;
    sha256 = "6b6018788a554d44f1ab86af880a8caf311952dd68a85f0b02f76400de4f6eb0";
  };

  buildInputs = [ actionlib-msgs nav-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs nav-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides msgs, services and actions for STDR Simulator.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
