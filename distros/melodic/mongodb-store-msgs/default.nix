
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mongodb-store-msgs";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_store_msgs/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "9e04a9e03d5d12af73025911fbc85aa0ba7fc03b0e44b3bc6247df1d39fb7526";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-generation message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_store_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
