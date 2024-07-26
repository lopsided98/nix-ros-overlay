
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-rviz-plugins";
  version = "2.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_rviz_plugins/2.1.0-3.tar.gz";
    name = "2.1.0-3.tar.gz";
    sha256 = "be081a5113d5d3686812ae79986e11d5d626bb589a47db12935bef7d64be9bb5";
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
