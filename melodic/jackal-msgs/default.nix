
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-jackal-msgs";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_msgs/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "4be5567160fa88f461cf4319ebdbd28ea67a3060cb7bb41fcf3dfadd4396c9ef";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Jackal, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
