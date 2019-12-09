
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rocon-console, rqt-plot, qt-gui-py-common, rosgraph, catkin, rocon-python-utils, rqt-gui-py, rqt-reconfigure, rqt-robot-monitor, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-wrapper";
  version = "0.1.4";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rqt_wrapper-release/archive/release/kinetic/rqt_wrapper/0.1.4-0.tar.gz";
    name = "0.1.4-0.tar.gz";
    sha256 = "f4e34b6add56f7f11092af35cfbaa9677d5cf658711494ae684e314829a478fa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui rocon-console rqt-plot qt-gui-py-common rosgraph rocon-python-utils rqt-gui-py rqt-reconfigure rqt-robot-monitor python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A wrapper for keeping rqt programs alive.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
