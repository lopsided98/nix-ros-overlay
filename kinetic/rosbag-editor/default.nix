
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, catkin, tf, qt5, tf2-msgs, roscpp, rosbag }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-editor";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/rosbag_editor-release/archive/release/kinetic/rosbag_editor/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "44490d8db2a980f85f476a39413a7852047ea216b877fcafbbc306af6366dbd2";
  };

  buildType = "catkin";
  buildInputs = [ rosbag-storage tf roscpp qt5.qtbase tf2-msgs rosbag ];
  propagatedBuildInputs = [ rosbag-storage tf roscpp qt5.qtbase tf2-msgs rosbag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rosbag_editor package'';
    license = with lib.licenses; [ mit ];
  };
}
