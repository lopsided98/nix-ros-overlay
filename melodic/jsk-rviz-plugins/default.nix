
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cv-bridge, jsk-gui-msgs, image-geometry, view-controller-msgs, diagnostic-msgs, geometry-msgs, jsk-hark-msgs, jsk-footstep-msgs, pythonPackages, jsk-topic-tools, message-generation, rviz, people-msgs, mk, rosbuild, posedetection-msgs, catkin, jsk-recognition-msgs, std-msgs, image-publisher, urdfdom-py, jsk-recognition-utils, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-jsk-rviz-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rviz_plugins/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "c1c50044f24196bb50fc782cb407e7ed9c8540a7525c6f305b0ec44641d74f27";
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
