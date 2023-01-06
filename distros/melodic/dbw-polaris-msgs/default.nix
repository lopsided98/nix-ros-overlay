
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-polaris-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/melodic/dbw_polaris_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a8ed7285a6f6fe7804235d9e14fdceedfe9ae4c8b75225f288fe7906b8a9a4b8";
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
