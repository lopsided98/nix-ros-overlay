
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "466ddf22cbb2c08df916e629af63d9cae0004fc723d2b4ee4cbb5eab68ecc447";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages and utility functions for ETSI ITS messages'';
    license = with lib.licenses; [ mit ];
  };
}
