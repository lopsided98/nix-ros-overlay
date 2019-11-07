
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-ulc-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_ulc_ros-release/archive/release/melodic/dataspeed_ulc_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "0e55bcdae84e02def23cae30229d709877cb4a1202a8bd133d2746a6b32d3cae";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for interacting with the Universal Lat/Lon Controller (ULC)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
