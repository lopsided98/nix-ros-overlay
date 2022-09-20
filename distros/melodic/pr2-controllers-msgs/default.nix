
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers-msgs";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers_msgs/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "82561cde4b79968a9d87697c9a87487b9252480f072ae084497f383be300167f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs geometry-msgs message-runtime trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services, and actions used in the pr2_controllers stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
