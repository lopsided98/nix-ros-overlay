
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-heifu-msgs";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_msgs/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "6966cd1900d0a2df4f24461ddc4281453f089356a48165dbc7ab760aa568ed0f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common message definitions for heifu'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
