
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, qt-gui-py-common, rocon-console, rocon-python-utils, rosgraph, rqt-gui, rqt-gui-py, rqt-plot, rqt-reconfigure, rqt-robot-monitor }:
buildRosPackage {
  pname = "ros-kinetic-rqt-wrapper";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rqt_wrapper-release/archive/release/kinetic/rqt_wrapper/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "f4e34b6add56f7f11092af35cfbaa9677d5cf658711494ae684e314829a478fa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding qt-gui-py-common rocon-console rocon-python-utils rosgraph rqt-gui rqt-gui-py rqt-plot rqt-reconfigure rqt-robot-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper for keeping rqt programs alive.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
