
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, diagnostic-msgs, catkin, pythonPackages, rqt-gui-py, qt-gui, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-runtime-monitor";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_runtime_monitor-release/archive/release/melodic/rqt_runtime_monitor/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "f58958b5649d59fca3022a1771e6a457382744c616835cc65980213ab742fd5c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui diagnostic-msgs pythonPackages.rospkg rqt-gui-py qt-gui rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_runtime_monitor provides a GUI plugin viewing DiagnosticsArray messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
