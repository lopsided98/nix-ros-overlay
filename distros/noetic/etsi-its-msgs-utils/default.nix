
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "c00f1f3cf35ca68a7716a655bcdbce36454309b8cf239635ce9a016454016f5c";
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
