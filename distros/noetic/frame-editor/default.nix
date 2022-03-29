
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, interactive-markers, message-generation, message-runtime, qt-gui-py-common, rospy, rqt-gui, rqt-gui-py, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-frame-editor";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/rqt_frame_editor_plugin-release/archive/release/noetic/frame_editor/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e404f3927e62cec49613aa897f8c18d25a7f21d1c6aab60aaa1030720344bfc9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs interactive-markers message-runtime qt-gui-py-common rospy rqt-gui rqt-gui-py std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The frame_editor package'';
    license = with lib.licenses; [ mit ];
  };
}
