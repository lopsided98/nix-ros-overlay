
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, wxGTK, tf, shape-msgs, catkin, rc-common-msgs, visualization-msgs, roscpp, message-runtime, rc-pick-client }:
buildRosPackage {
  pname = "ros-melodic-rc-roi-manager-gui";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_roi_manager_gui/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "055874d511998280c8cbcb3fa00c30177f57489a2989737c15fec27099e56682";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs interactive-markers wxGTK tf shape-msgs rc-common-msgs visualization-msgs roscpp rc-pick-client ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers wxGTK tf shape-msgs rc-common-msgs visualization-msgs roscpp message-runtime rc-pick-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for the region of interest manager of the itempick and boxpick modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
