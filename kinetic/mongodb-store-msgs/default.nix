
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-mongodb-store-msgs";
  version = "0.4.5-r1";

  src = fetchurl {
    url = https://github.com/strands-project-releases/mongodb_store/archive/release/kinetic/mongodb_store_msgs/0.4.5-1.tar.gz;
    sha256 = "92382e1ce7e0b2461ea6d42c7fe237ca9e67c33a98a5888303e22160ee9ecd6b";
  };

  buildInputs = [ catkin message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ message-generation message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_store_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
