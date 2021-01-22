
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, message-runtime, rc-common-msgs, rc-pick-client, roscpp, shape-msgs, tf, visualization-msgs, wxGTK }:
buildRosPackage {
  pname = "ros-noetic-rc-roi-manager-gui";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_roi_manager_gui/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "c74c22da2864caddaa117bebe2bc6628c54ef1f748664e9e6d2773520c0295da";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers message-runtime rc-common-msgs rc-pick-client roscpp shape-msgs tf visualization-msgs wxGTK ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for the region of interest manager of the itempick and boxpick modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
