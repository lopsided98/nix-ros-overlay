
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-mongodb-store-msgs";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/noetic/mongodb_store_msgs/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "0074332d35316904b5cd14dd86efbabc5285a3a1a07907b87244f1d05536832a";
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
