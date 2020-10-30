
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, message-runtime, rc-common-msgs, rc-pick-client, roscpp, shape-msgs, tf, visualization-msgs, wxGTK }:
buildRosPackage {
  pname = "ros-noetic-rc-roi-manager-gui";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_roi_manager_gui/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "467ec6903d2ff04a985c71c577c1c0174e8672dcab1ba5023e7c5751fce580e2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers message-runtime rc-common-msgs rc-pick-client roscpp shape-msgs tf visualization-msgs wxGTK ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for the region of interest manager of the itempick and boxpick modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
