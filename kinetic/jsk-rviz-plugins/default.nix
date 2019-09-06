
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, jsk-gui-msgs, image-geometry, view-controller-msgs, diagnostic-msgs, geometry-msgs, jsk-hark-msgs, jsk-footstep-msgs, pythonPackages, jsk-topic-tools, message-generation, rviz, people-msgs, mk, rosbuild, posedetection-msgs, catkin, jsk-recognition-msgs, std-msgs, image-publisher, urdfdom-py, jsk-recognition-utils, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-jsk-rviz-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/kinetic/jsk_rviz_plugins/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "bca19afb384a9d0a027c38004e2b5094448510294675d27a2dccae210b5dd6bc";
  };

  buildType = "catkin";
  buildInputs = [ cv-bridge jsk-gui-msgs image-geometry view-controller-msgs diagnostic-msgs geometry-msgs jsk-hark-msgs jsk-footstep-msgs jsk-topic-tools message-generation rviz people-msgs mk rosbuild jsk-recognition-msgs std-msgs urdfdom-py jsk-recognition-utils dynamic-reconfigure ];
  propagatedBuildInputs = [ cv-bridge jsk-gui-msgs pythonPackages.scipy image-geometry view-controller-msgs diagnostic-msgs geometry-msgs jsk-hark-msgs jsk-footstep-msgs jsk-topic-tools message-generation rviz people-msgs posedetection-msgs jsk-recognition-msgs image-publisher std-msgs urdfdom-py jsk-recognition-utils dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_rviz_plugins package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
