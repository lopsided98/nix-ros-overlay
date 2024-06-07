
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-rviz-plugins";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_rviz_plugins/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "cfc7dd56b446955d025be86609e0940633bc3b8648d22d89992b0546bc64d3bf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RViz plugin for ROS 2 messages based on ETSI ITS messages";
    license = with lib.licenses; [ mit ];
  };
}
