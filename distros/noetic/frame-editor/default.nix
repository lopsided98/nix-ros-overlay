
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, interactive-markers, message-generation, message-runtime, qt-gui-py-common, rospy, rqt-gui, rqt-gui-py, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-frame-editor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/rqt_frame_editor_plugin-release/archive/release/noetic/frame_editor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "0f7cf82d2502288454b161f5ee034da3751c5fe486086c800bdc5f1617961944";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs interactive-markers message-runtime qt-gui-py-common rospy rqt-gui rqt-gui-py std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The frame_editor package";
    license = with lib.licenses; [ mit ];
  };
}
