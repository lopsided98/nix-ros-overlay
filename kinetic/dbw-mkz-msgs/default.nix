
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rosbag-migration-rule, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz-msgs";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz_msgs/1.1.1-0.tar.gz;
    sha256 = "ecd63241958759f87f292dbb3f0f33426b6c164d817cb3fe02c79c464a947551";
  };

  propagatedBuildInputs = [ std-msgs rosbag-migration-rule message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Drive-by-wire messages for the Lincoln MKZ'';
    #license = lib.licenses.BSD;
  };
}
