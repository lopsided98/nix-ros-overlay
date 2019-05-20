
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_msgs/0.0.4-1.tar.gz;
    sha256 = "23a1ddaaa816c70e6778af58d95e23a16d4194072e816f778946aab3412e41c2";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for interacting with the Universal Lat/Lon Controller (ULC)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
