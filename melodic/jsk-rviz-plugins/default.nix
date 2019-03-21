
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, jsk-gui-msgs, image-geometry, view-controller-msgs, diagnostic-msgs, geometry-msgs, jsk-hark-msgs, jsk-footstep-msgs, pythonPackages, jsk-topic-tools, message-generation, rviz, people-msgs, mk, rosbuild, posedetection-msgs, catkin, jsk-recognition-msgs, image-publisher, std-msgs, urdfdom-py, jsk-recognition-utils, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-jsk-rviz-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rviz_plugins/2.1.5-0.tar.gz;
    sha256 = "c1c50044f24196bb50fc782cb407e7ed9c8540a7525c6f305b0ec44641d74f27";
  };

  propagatedBuildInputs = [ people-msgs cv-bridge posedetection-msgs jsk-gui-msgs pythonPackages.scipy image-geometry view-controller-msgs jsk-recognition-msgs diagnostic-msgs image-publisher std-msgs geometry-msgs urdfdom-py jsk-hark-msgs jsk-footstep-msgs jsk-topic-tools message-generation rviz jsk-recognition-utils dynamic-reconfigure ];
  nativeBuildInputs = [ people-msgs mk cv-bridge jsk-gui-msgs rosbuild catkin image-geometry view-controller-msgs jsk-recognition-msgs diagnostic-msgs std-msgs geometry-msgs urdfdom-py jsk-hark-msgs jsk-footstep-msgs jsk-topic-tools message-generation rviz jsk-recognition-utils dynamic-reconfigure ];

  meta = {
    description = ''The jsk_rviz_plugins package'';
    #license = lib.licenses.BSD;
  };
}
