
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-topic";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/crystal/rqt_topic/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "fcd05409c692c11682336b35372024844908ac97824eed6b8d98e38ac4af3536";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
