
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, catkin, message-runtime, rosbag-migration-rule }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz-msgs";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz_msgs/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "12caef99ae83fc9711e4422b4c4a86adf5ba988789ec470dea553f650976e4aa";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs rosbag-migration-rule ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire messages for the Lincoln MKZ'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
