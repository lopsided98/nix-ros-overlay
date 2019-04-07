
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, genmsg, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-bin-pose-msgs";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/durovsky/binpicking_utils-release/archive/release/kinetic/bin_pose_msgs/0.1.4-0.tar.gz;
    sha256 = "1f60038100de99ed7041d53ca36fd4cf1a76ad3fa6e546869ee347265805bd73";
  };

  buildInputs = [ std-msgs genmsg message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs genmsg message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bin_pose_msgs package'';
    #license = lib.licenses.BSD;
  };
}
