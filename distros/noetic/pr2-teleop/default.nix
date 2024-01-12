
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, pr2-controllers-msgs, roscpp, roslaunch, rospy, rostest, std-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-pr2-teleop";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_teleop/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "8e38afb599e92781f188cedf6f7f4d973694b1e87909afd67132594fd30cdc99";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ actionlib geometry-msgs pr2-controllers-msgs roscpp rospy std-msgs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_teleop package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
