
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, jsk-footstep-msgs, rosbuild, diagnostic-msgs, dynamic-reconfigure, view-controller-msgs, jsk-gui-msgs, jsk-topic-tools, jsk-hark-msgs, urdfdom-py, std-msgs, jsk-recognition-msgs, catkin, jsk-recognition-utils, pythonPackages, cv-bridge, message-generation, image-geometry, people-msgs, posedetection-msgs, image-publisher, rviz, mk }:
buildRosPackage {
  pname = "ros-kinetic-jsk-rviz-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rviz_plugins/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "bca19afb384a9d0a027c38004e2b5094448510294675d27a2dccae210b5dd6bc";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs jsk-footstep-msgs rosbuild diagnostic-msgs dynamic-reconfigure view-controller-msgs jsk-gui-msgs jsk-topic-tools jsk-hark-msgs urdfdom-py std-msgs jsk-recognition-msgs jsk-recognition-utils cv-bridge message-generation image-geometry people-msgs rviz mk ];
  propagatedBuildInputs = [ geometry-msgs jsk-footstep-msgs diagnostic-msgs dynamic-reconfigure view-controller-msgs jsk-gui-msgs jsk-topic-tools jsk-hark-msgs urdfdom-py std-msgs jsk-recognition-msgs jsk-recognition-utils cv-bridge message-generation image-geometry posedetection-msgs image-publisher people-msgs pythonPackages.scipy rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rviz_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
