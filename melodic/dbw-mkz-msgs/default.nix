
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rosbag-migration-rule, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-msgs";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_msgs/1.1.1-0.tar.gz;
    sha256 = "e8dedab69c722847607dbbd6cb5f5d0f3270e023f450f76251852b0e36cd154d";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs rosbag-migration-rule message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for the Lincoln MKZ'';
    #license = lib.licenses.BSD;
  };
}
