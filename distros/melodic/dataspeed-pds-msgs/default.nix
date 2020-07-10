
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-msgs";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_msgs/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "7cb03c4bc2380159c20600d7553666509069d5a6154c12799482795c5f552b41";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
