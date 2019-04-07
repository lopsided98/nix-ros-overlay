
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-heron-msgs";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_msgs/0.3.0-0.tar.gz;
    sha256 = "8b1d84160c5af342e0bf2485329c5408492e911edf9e9141083738b27dbed0d4";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides standard messages specific to Heron, especially for 
    the microcontroller's rosserial interface.'';
    #license = lib.licenses.BSD;
  };
}
