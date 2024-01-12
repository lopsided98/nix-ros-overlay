
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris-msgs";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris_msgs/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "4d6b479e6d685ffe17c93ba059b24311bc9a5234c17b30ed25f95178aba6df93";
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
