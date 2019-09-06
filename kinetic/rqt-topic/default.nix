
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-gui, rostopic, std-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-topic";
  version = "0.4.10";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_topic-release/archive/release/kinetic/rqt_topic/0.4.10-0.tar.gz";
    name = "0.4.10-0.tar.gz";
    sha256 = "98fd009283ddeb6dad4e8b3e9f7a858efba4777c20b7219ef770607edf0282de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rostopic std-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
