
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-controllers-msgs";
  version = "1.10.14";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/kinetic/pr2_controllers_msgs/1.10.14-0.tar.gz;
    sha256 = "ff328cd99fc20adecc2287db00bfbc83bd44fc90cf5145c0edd087317f695681";
  };

  buildInputs = [ trajectory-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services, and actions used in the pr2_controllers stack.'';
    #license = lib.licenses.BSD;
  };
}
