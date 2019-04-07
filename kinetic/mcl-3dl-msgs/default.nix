
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-mcl-3dl-msgs";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/at-wat/mcl_3dl_msgs-release/archive/release/kinetic/mcl_3dl_msgs/0.1.2-0.tar.gz;
    sha256 = "9c81bd8e59eee4a8fd13e46a3f64c094f347d51256450363716ab873720d7526";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcl_3dl message definition package'';
    #license = lib.licenses.BSD;
  };
}
