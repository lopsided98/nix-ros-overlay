
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, interactive-markers, message-generation, message-runtime, qt-gui-py-common, rospy, rqt-gui, rqt-gui-py, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-frame-editor";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/rqt_frame_editor_plugin-release/archive/release/noetic/frame_editor/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9249d5507922cf413468a64e5aad459c61ca85549c02cd5142224a5484031f03";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs interactive-markers message-runtime qt-gui-py-common rospy rqt-gui rqt-gui-py std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The frame_editor package'';
    license = with lib.licenses; [ mit ];
  };
}
