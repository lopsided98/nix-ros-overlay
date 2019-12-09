
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-fsrobo-r-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/FUJISOFT-Robotics/fsrobo_r-release/archive/release/kinetic/fsrobo_r_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "9cf83dc453677bafe07e34e53641d6fc5b41edfed783fd09690e9c113cd49aba";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs message-runtime ];
  propagatedBuildInputs = [ std-msgs message-generation geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fsrobo_r_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
