
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-homer-ptu-msgs";
  version = "0.1.7-r2";

  src = fetchurl {
    url = "https://gitlab.uni-koblenz.de/robbie/homer_ptu_msgs-release/-/archive/release/kinetic/homer_ptu_msgs/0.1.7-2/homer_ptu_msgs-release-release-kinetic-homer_ptu_msgs-0.1.7-2.tar.gz";
    name = "homer_ptu_msgs-release-release-kinetic-homer_ptu_msgs-0.1.7-2.tar.gz";
    sha256 = "221eace54a5cc14502e93453dce3f86276df86d1173f9f9310cb735bd38a8d5d";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ptu_msgs package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
