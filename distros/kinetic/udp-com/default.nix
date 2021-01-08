
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, roscpp, roslint, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-udp-com";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_com-release/archive/release/kinetic/udp_com/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "ce6072a145a47fb9e4d5ccf813614fc2f12e40090c39dd82fa37325331c804e1";
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
