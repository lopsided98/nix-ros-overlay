
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rosbag-migration-rule, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca-msgs";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca_msgs/1.0.1-0.tar.gz;
    sha256 = "c88dcd572943e157cb201add7fcc19f1a1ee7080d6af6b027c2c67bf2d61e041";
  };

  propagatedBuildInputs = [ std-msgs rosbag-migration-rule message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''Drive-by-wire messages for the Chrysler Pacifica'';
    #license = lib.licenses.BSD;
  };
}
