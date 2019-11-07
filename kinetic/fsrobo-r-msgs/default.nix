
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "c1e5330d0d0242a45b60fea7008a78d257545ee1b6ee48960428d1e73288ff8b";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
