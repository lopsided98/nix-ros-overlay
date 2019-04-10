
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, qt-gui, rospy, diagnostic-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-runtime-monitor";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_runtime_monitor-release/archive/release/lunar/rqt_runtime_monitor/0.5.7-0.tar.gz;
    sha256 = "e910c184224a8e1ca1bb1dfe54b07c4f366e7e54db5cf5b40243a29528695b62";
  };

  propagatedBuildInputs = [ rqt-gui-py qt-gui rospy pythonPackages.rospkg diagnostic-msgs rqt-gui python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    #license = lib.licenses.BSD;
  };
}
