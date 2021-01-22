
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-ulc-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/kinetic/dataspeed_ulc_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "4bf3d49ca44190f9a1983f53999fa15487e9ef5e96b4bacb2de8007c94b3ff2a";
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
