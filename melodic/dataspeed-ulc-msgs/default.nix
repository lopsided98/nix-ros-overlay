
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-msgs";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_msgs/0.0.3-0.tar.gz;
    sha256 = "4547e16e8182c95fab5e2b34575f8eccef5d687496e0d20f7b2dc937f8632411";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''ROS messages for interacting with the Universal Lat/Lon Controller (ULC)'';
    #license = lib.licenses.BSD;
  };
}
