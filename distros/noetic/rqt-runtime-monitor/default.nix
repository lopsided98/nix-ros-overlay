
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python-qt-binding, python3Packages, qt-gui, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-runtime-monitor";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_runtime_monitor-release/archive/release/noetic/rqt_runtime_monitor/0.5.9-1.tar.gz";
    name = "0.5.9-1.tar.gz";
    sha256 = "237206b6bdd8850ce375e7900125b5864646556a68acb107989624cefc5c0d33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs python-qt-binding python3Packages.rospkg qt-gui rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
