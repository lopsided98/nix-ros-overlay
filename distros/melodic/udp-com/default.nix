
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, roscpp, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-udp-com";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/udp_com-release/archive/release/melodic/udp_com/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "80acc627cff5396a71aa01948fd791f94e1dde528db1e10d945ad6c45126beea";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ message-generation message-runtime nodelet roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The udp_com package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
