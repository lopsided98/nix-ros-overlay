
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dingo-msgs";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo-release/archive/release/melodic/dingo_msgs/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "e4822a65d81656b3e248a1eaf98204a9d03cf4d7d0d56b61c962e41366050022";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Dingo, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
