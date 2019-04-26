
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-heron-msgs";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/heron-release/archive/release/kinetic/heron_msgs/0.3.1-0.tar.gz;
    sha256 = "2ad5a2ee845261bde8492d547aa7738531de84181eb9a510d7e31d4be1b521d5";
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
