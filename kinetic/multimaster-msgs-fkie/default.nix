
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-multimaster-msgs-fkie";
  version = "0.8.11";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/multimaster_msgs_fkie/0.8.11-0.tar.gz;
    sha256 = "4b80799dc0fc94ff36948bcc084e739c5b6d8d04c71b22a912a192e6fdcc65fb";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''The messages required by multimaster packages.'';
    #license = lib.licenses.BSD;
  };
}
