
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rqt-py-common, rqt-console, rospy, roslaunch, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-launch";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_launch-release/archive/release/kinetic/rqt_launch/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "4d52dc7d995ffe9e219c30f3c85ad15ed33ef5f7b87e216d48175da77302a242";
  };

  buildType = "catkin";
  buildInputs = [ rqt-py-common ];
  propagatedBuildInputs = [ roslaunch rqt-gui-py rqt-gui rqt-console rospy rqt-py-common python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This rqt plugin ROS package provides easy view of .launch files.
  User can also start and end node by node that are defined in those files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
