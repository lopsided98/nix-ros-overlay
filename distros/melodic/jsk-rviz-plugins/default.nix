
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, diagnostic-msgs, dynamic-reconfigure, geometry-msgs, image-geometry, image-publisher, jsk-footstep-msgs, jsk-gui-msgs, jsk-hark-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-topic-tools, message-generation, mk, people-msgs, posedetection-msgs, pythonPackages, rosbuild, rviz, std-msgs, urdfdom-py, view-controller-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-rviz-plugins";
  version = "2.1.7-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rviz_plugins/2.1.7-1.tar.gz";
    name = "2.1.7-1.tar.gz";
    sha256 = "e38ba9e3d320ca900fa0ca6cb3b76e8208ebc41a4a517476e7d08788511ad0cf";
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
