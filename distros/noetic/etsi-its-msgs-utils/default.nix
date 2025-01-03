
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "937a43a32f78856e2d982d0cde8c5123efae13471f729aef893f549d05053e64";
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
