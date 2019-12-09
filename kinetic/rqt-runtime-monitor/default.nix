
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, diagnostic-msgs, catkin, pythonPackages, rqt-gui-py, qt-gui, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-runtime-monitor";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_runtime_monitor-release/archive/release/kinetic/rqt_runtime_monitor/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "45cf250ce885a50ea9aaa0fc2570ea86493fd642f183476375dc2a9e62b57822";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui diagnostic-msgs pythonPackages.rospkg rqt-gui-py qt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
