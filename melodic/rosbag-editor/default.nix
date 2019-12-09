
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag-storage, catkin, tf, qt5, tf2-msgs, roscpp, rosbag }:
buildRosPackage {
  pname = "ros-melodic-rosbag-editor";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/facontidavide/rosbag_editor-release/archive/release/melodic/rosbag_editor/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "a14354ca2721cf4793619775a5ab3fe46348104f6436f33bfa52779f56406e70";
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
