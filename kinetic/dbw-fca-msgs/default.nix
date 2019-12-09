
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, message-runtime, rosbag-migration-rule }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca-msgs";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca_msgs/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "bfcf7f9628f8ca6424cf203eb706a8a07dd509c7c5a45e86d4c96d25ac79a840";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs rosbag-migration-rule ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for the Chrysler Pacifica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
