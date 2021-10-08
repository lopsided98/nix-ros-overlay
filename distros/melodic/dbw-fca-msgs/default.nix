
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-msgs";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_msgs/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "da0eac4d4147c2e8668ee0c6943d4f70b027f9df5cc740337a90d07de0ea93cb";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for the Chrysler Pacifica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
