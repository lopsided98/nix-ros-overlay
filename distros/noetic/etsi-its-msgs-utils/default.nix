
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, etsi-its-msgs, geographiclib, geometry-msgs, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-msgs-utils";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_msgs_utils/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "795af3d89f5494d6e5edfc4d5a82e612cc525595b33cd093e5dad15fe1a4d424";
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
