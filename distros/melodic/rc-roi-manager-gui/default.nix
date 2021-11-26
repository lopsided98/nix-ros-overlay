
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, message-runtime, rc-common-msgs, rc-pick-client, roscpp, shape-msgs, tf, visualization-msgs, wxGTK }:
buildRosPackage {
  pname = "ros-melodic-rc-roi-manager-gui";
  version = "3.2.4-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_roi_manager_gui/3.2.4-1.tar.gz";
    name = "3.2.4-1.tar.gz";
    sha256 = "7aff5ae94d6898964c7859b230a3380a31f74c6f4af924a90b0caf64fffa8999";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs interactive-markers message-runtime rc-common-msgs rc-pick-client roscpp shape-msgs tf visualization-msgs wxGTK ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros client for the region of interest manager of the itempick and boxpick modules'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
