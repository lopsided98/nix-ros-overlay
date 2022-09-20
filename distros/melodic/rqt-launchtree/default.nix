
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-launchtree";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pschillinger/rqt_launchtree-release/archive/release/melodic/rqt_launchtree/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "0eb679a1667c49340b2cd90602a653377d5b5582cc782d9fc8b2a58d9b9dc79e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roslaunch rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An RQT plugin for hierarchical launchfile configuration introspection.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
