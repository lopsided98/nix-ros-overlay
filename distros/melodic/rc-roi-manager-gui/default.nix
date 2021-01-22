
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, message-runtime, rc-common-msgs, rc-pick-client, roscpp, shape-msgs, tf, visualization-msgs, wxGTK }:
buildRosPackage {
  pname = "ros-melodic-rc-roi-manager-gui";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_roi_manager_gui/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "41cd87e85fc7a816883ab645631bdca1c29e2c5357eb01b42611110aa2ba5323";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers message-runtime rc-common-msgs rc-pick-client roscpp shape-msgs tf visualization-msgs wxGTK ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for the region of interest manager of the itempick and boxpick modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
