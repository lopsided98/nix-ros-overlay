
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers-msgs";
  version = "1.10.15-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers_msgs/1.10.15-1.tar.gz;
    sha256 = "12c67675691e346b4007f9e7f8fb69e83b4c65be62f955b2a9f71f95a6099211";
  };

  propagatedBuildInputs = [ trajectory-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ message-generation actionlib-msgs trajectory-msgs catkin geometry-msgs ];

  meta = {
    description = ''Messages, services, and actions used in the pr2_controllers stack.'';
    #license = lib.licenses.BSD;
  };
}
