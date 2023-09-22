
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_msgs/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "f5cdb5c1f1609fbd85c9d80e1670a1bdea351dd8d87552218820b88c04894656";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for Polaris platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
