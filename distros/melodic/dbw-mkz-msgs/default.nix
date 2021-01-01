
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-msgs";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_msgs/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "b383073390016e44f2a96a1a3e3798ed0e6d14852e868d1299dbea908890b0a5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for the Lincoln MKZ'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
