
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, wxGTK, tf, shape-msgs, catkin, rc-common-msgs, visualization-msgs, roscpp, message-runtime, rc-pick-client }:
buildRosPackage {
  pname = "ros-kinetic-rc-roi-manager-gui";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/kinetic/rc_roi_manager_gui/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "91f18f08c008d8e3a0a058825048dac14feb683b6ccfd1a6d2847a4d21bd3ee2";
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
