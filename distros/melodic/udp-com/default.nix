
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, roscpp, roslint, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-udp-com";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_com-release/archive/release/melodic/udp_com/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "8f844c3da576c2b248db9f6e4cc2ef8b17e4a5014492be84a5378998827ac6ec";
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
