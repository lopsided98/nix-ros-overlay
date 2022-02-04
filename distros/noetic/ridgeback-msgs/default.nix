
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-msgs";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_msgs/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "84cd40f1bb1832e3b4a13409873904ea749c6743b30aac8aeabcec818d658ff1";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages exclusive to Ridgeback, especially for representing low-level motor commands and sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
