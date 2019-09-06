
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, actionlib }:
buildRosPackage {
  pname = "ros-melodic-mongodb-store-msgs";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/strands-project-releases/mongodb_store/archive/release/melodic/mongodb_store_msgs/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "075b062cafd0ac8994ea0c176b25a8099b419edc548f94e26ef1b5162a2962bf";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation actionlib-msgs actionlib ];
  propagatedBuildInputs = [ message-generation message-runtime actionlib-msgs actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_store_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
