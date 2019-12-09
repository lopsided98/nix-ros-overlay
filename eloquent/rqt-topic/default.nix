
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-py-common, rqt-gui, rqt-gui-py, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-rqt-topic";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/eloquent/rqt_topic/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "772956e25abaab59579af8caf23a891750d7c20784e44ddb8e365dc784702621";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-py-common rqt-gui rqt-gui-py python-qt-binding ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
