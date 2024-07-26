
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "4d5b0797d2a7ccda96338d0dc81fc208c8ce372a514fd95355b25d8893f6b051";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ etsi-its-msgs geographiclib geometry-msgs ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS messages and utility functions for ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
