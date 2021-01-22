
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, interactive-markers, message-generation, message-runtime, rospy, rqt-gui, rqt-gui-py, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-frame-editor";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/ipa320/rqt_frame_editor_plugin-release/archive/release/kinetic/frame_editor/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "c4dd2fd3a521ea24f14ef5fa08270ddf47b4ae6567bc152985791bd1b8a6596c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs interactive-markers message-runtime rospy rqt-gui rqt-gui-py std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The frame_editor package'';
    license = with lib.licenses; [ mit ];
  };
}
