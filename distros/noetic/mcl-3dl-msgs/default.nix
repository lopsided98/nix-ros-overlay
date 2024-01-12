
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mcl-3dl-msgs";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/mcl_3dl_msgs-release/archive/release/noetic/mcl_3dl_msgs/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "d2ea9655c093e240f4acdd1619cb5a75aa4f73c2d0406f8250a3f5664282034b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mcl_3dl message definition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
