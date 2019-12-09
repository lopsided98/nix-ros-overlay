
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, jsk-footstep-msgs, rosbuild, diagnostic-msgs, dynamic-reconfigure, view-controller-msgs, jsk-gui-msgs, jsk-topic-tools, jsk-hark-msgs, urdfdom-py, std-msgs, jsk-recognition-msgs, catkin, jsk-recognition-utils, pythonPackages, cv-bridge, message-generation, image-geometry, people-msgs, posedetection-msgs, image-publisher, rviz, mk }:
buildRosPackage {
  pname = "ros-melodic-jsk-rviz-plugins";
  version = "2.1.5";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_visualization-release/archive/release/melodic/jsk_rviz_plugins/2.1.5-0.tar.gz";
    name = "2.1.5-0.tar.gz";
    sha256 = "c1c50044f24196bb50fc782cb407e7ed9c8540a7525c6f305b0ec44641d74f27";
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
