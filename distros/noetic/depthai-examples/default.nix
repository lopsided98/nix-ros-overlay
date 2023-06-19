
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, foxglove-msgs, image-transport, message-filters, nodelet, opencv, robot-state-publisher, ros-environment, roscpp, rospy, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-examples";
  version = "2.7.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_examples/2.7.2-1.tar.gz";
    name = "2.7.2-1.tar.gz";
    sha256 = "92fe5fb359b733d4a3499eabc45f4f283de7e0de9cba189afb9ad2135fd43319";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depth-image-proc depthai depthai-bridge depthai-descriptions depthai-ros-msgs foxglove-msgs image-transport message-filters nodelet opencv robot-state-publisher ros-environment roscpp rospy sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_examples package'';
    license = with lib.licenses; [ mit ];
  };
}
