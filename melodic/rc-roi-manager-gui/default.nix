
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, wxGTK, shape-msgs, rc-common-msgs, catkin, rc-pick-client, roscpp, interactive-markers, visualization-msgs, message-runtime, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rc-roi-manager-gui";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_roi_manager_gui/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "055874d511998280c8cbcb3fa00c30177f57489a2989737c15fec27099e56682";
  };

  buildType = "catkin";
  buildInputs = [ shape-msgs wxGTK rc-common-msgs rc-pick-client roscpp interactive-markers visualization-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ shape-msgs wxGTK rc-common-msgs roscpp rc-pick-client message-runtime interactive-markers visualization-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for the region of interest manager of the itempick and boxpick modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
