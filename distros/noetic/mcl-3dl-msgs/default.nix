
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mcl-3dl-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl_msgs-release/archive/release/noetic/mcl_3dl_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "f9798340f50b1c3731546201ba912fbe5d66c4cc0d6ff9a5d4582277b5bb3a05";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcl_3dl message definition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
