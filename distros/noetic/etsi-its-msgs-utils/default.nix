
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "7b1ef3968ff81526a1e73b37594608b1626d594d9f4e59040dd32f0f30bad659";
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
