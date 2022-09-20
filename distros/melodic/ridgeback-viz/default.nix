
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, ridgeback-description, roslaunch, rqt-console, rqt-gui, rqt-robot-monitor, rviz }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-viz";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/melodic/ridgeback_viz/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "475858d5eeeb3bfd11319044e2768307aba08fcb411925b754b89831dd3710db";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui ridgeback-description rqt-console rqt-gui rqt-robot-monitor rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Ridgeback.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
