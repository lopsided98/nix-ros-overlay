
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-mir-msgs";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_msgs/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "68f7558eea6c125e5a30fb721170c593ff629c4c3c9d201ca60675ca789cecb8";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
