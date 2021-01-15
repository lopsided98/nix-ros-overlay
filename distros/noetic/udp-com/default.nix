
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, roscpp, roslint, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-udp-com";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_com-release/archive/release/noetic/udp_com/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "732b025c28622d1bfe03947eb273dabf9a8d5f63dd7ae331eed3c01d674a2f8b";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ message-generation message-runtime nodelet roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The udp_com package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
