
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-ulc-msgs";
  version = "0.0.5-r2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/noetic/dataspeed_ulc_msgs/0.0.5-2.tar.gz";
    name = "0.0.5-2.tar.gz";
    sha256 = "45476604a4303713789b69379dd049da0245107f6516439245398d1f6ac0c901";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for interacting with the Universal Lat/Lon Controller (ULC)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
