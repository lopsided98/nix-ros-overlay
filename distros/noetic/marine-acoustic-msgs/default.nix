
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marine-acoustic-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/CCOMJHC/marine_msgs-release/archive/release/noetic/marine_acoustic_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "dd092f33c87942745815f92900168156e0bf96be8ebb9d400d6d7c242f5b61ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The marine_acoustic_msgs package, including messages for common
  underwater sensors (DVL, multibeam sonar, imaging sonar)";
    license = with lib.licenses; [ bsd3 ];
  };
}
