
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_msgs/1.0.0-3;
    sha256 = "45a325653c286839e2f570cca5a1034b4f9ca2855fda7f9bdd57be772c150aa2";
  };

  buildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
