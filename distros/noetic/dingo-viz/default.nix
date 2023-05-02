
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-description, joint-state-publisher-gui, roslaunch, rqt-console, rqt-gui, rqt-robot-monitor, rviz }:
buildRosPackage {
  pname = "ros-noetic-dingo-viz";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_desktop-release/archive/release/noetic/dingo_viz/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "497d7e7ee12c26a89bf1920f491b05d4321c0076525cb1a857c19d47836aec4c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dingo-description joint-state-publisher-gui rqt-console rqt-gui rqt-robot-monitor rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Dingo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
