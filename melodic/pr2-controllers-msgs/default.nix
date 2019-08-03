
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, trajectory-msgs, catkin, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-controllers-msgs";
  version = "1.10.16-r1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_controllers_msgs/1.10.16-1.tar.gz;
    sha256 = "7df6fb2f4a1fcb88af85dcd992d6864120a383811493157e7624a724474fb95c";
  };

  buildInputs = [ trajectory-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services, and actions used in the pr2_controllers stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
