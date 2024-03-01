
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-marine-acoustic-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/CCOMJHC/marine_msgs-release/archive/release/noetic/marine_acoustic_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "823c239989b8368de999b831f3519ccb933a6b97cda42b68c075b0eb402db23f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The marine_acoustic_msgs package, including messages for common
  underwater sensors (DVL, multibeam sonar, imaging sonar)'';
    license = with lib.licenses; [ bsd3 ];
  };
}
