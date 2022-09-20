
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-heron-msgs";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/heron-release/archive/release/melodic/heron_msgs/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "899a24ec3766be77d115b0d13f93a17e06975b9d1efc66af3f760df81e0555ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides standard messages specific to Heron, especially for 
    the microcontroller's rosserial interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
