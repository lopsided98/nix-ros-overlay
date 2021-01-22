
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-msgs, dynamic-reconfigure, geometry-msgs, image-geometry, image-publisher, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-topic-tools, message-generation, mk, people-msgs, posedetection-msgs, python3Packages, rosbuild, rviz, std-msgs, urdfdom-py, view-controller-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-rviz-plugins";
  version = "2.1.7-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/noetic/jsk_rviz_plugins/2.1.7-4.tar.gz";
    name = "2.1.7-4.tar.gz";
    sha256 = "51e88e5884f1598d961db12396a4cc1716d4214852c6d17786bd7d56f517487e";
  };

  buildType = "catkin";
  buildInputs = [ mk rosbuild ];
  propagatedBuildInputs = [ cv-bridge diagnostic-msgs dynamic-reconfigure geometry-msgs image-geometry image-publisher jsk-footstep-msgs jsk-gui-msgs jsk-hark-msgs jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools message-generation people-msgs posedetection-msgs python3Packages.scipy rviz std-msgs urdfdom-py view-controller-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rviz_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
