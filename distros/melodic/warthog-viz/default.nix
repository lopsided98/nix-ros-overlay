
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, roslaunch, rviz, warthog-description }:
buildRosPackage {
  pname = "ros-melodic-warthog-viz";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_desktop-release/archive/release/melodic/warthog_viz/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "2f960a1ab14f68a3c7fa56d4f343176d4f1499372203c6114657d90610d8df76";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui rviz warthog-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Warthog.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
