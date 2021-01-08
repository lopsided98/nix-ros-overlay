
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-msgs, dynamic-reconfigure, geometry-msgs, image-geometry, image-publisher, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-topic-tools, message-generation, mk, people-msgs, posedetection-msgs, pythonPackages, rosbuild, rviz, std-msgs, urdfdom-py, view-controller-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-rviz-plugins";
  version = "2.1.7-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rviz_plugins/2.1.7-2.tar.gz";
    name = "2.1.7-2.tar.gz";
    sha256 = "5fbdc323ce01f5a4c2c9f98062d803fbc4885574ee885788d37eb3ce6905aeea";
  };

  buildType = "catkin";
  buildInputs = [ mk rosbuild ];
  propagatedBuildInputs = [ cv-bridge diagnostic-msgs dynamic-reconfigure geometry-msgs image-geometry image-publisher jsk-footstep-msgs jsk-gui-msgs jsk-hark-msgs jsk-recognition-msgs jsk-recognition-utils jsk-topic-tools message-generation people-msgs posedetection-msgs pythonPackages.scipy rviz std-msgs urdfdom-py view-controller-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rviz_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
