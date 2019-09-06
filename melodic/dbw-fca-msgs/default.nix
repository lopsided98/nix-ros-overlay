
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rosbag-migration-rule, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-msgs";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_msgs/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "1d6724bac0b0d14312065b87d7ae4ec4bc2645ec563eef12570af9e2317b0f53";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs rosbag-migration-rule message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for the Chrysler Pacifica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
