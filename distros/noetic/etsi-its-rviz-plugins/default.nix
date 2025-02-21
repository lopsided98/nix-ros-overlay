
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-etsi-its-rviz-plugins";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/etsi_its_messages-release/archive/release/noetic/etsi_its_rviz_plugins/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "cd2b0c955d09b88444f27eb664030785e905ff056cc1261df25e57065850de49";
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
