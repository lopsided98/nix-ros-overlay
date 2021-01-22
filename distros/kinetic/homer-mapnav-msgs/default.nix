
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, genmsg, geometry-msgs, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-mapnav-msgs";
  version = "0.1.53";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_mapnav_msgs-release/repository/archive.tar.gz?ref=release/kinetic/homer_mapnav_msgs/0.1.53-0";
    name = "archive.tar.gz";
    sha256 = "12038984195da143f1d65ed613d1a28b8614fa57f0490feb74fe2fa994cdbf53";
  };

  buildType = "catkin";
  buildInputs = [ genmsg message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''homer_mapnav_msgs contains the messages used for mapping and navigation'';
    license = with lib.licenses; [ gpl3 ];
  };
}
