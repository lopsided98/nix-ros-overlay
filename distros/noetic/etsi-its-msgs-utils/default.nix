
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "39a292d998758119ea98c8056d2583a65fe28f9d8d56b5b9a148ff7536085004";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages and utility functions for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
