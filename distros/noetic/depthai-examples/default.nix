
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, foxglove-msgs, image-transport, message-filters, nodelet, opencv, robot-state-publisher, ros-environment, roscpp, rospy, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-examples";
  version = "2.10.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_examples/2.10.2-1.tar.gz";
    name = "2.10.2-1.tar.gz";
    sha256 = "0b316e76d5663fef569232b5dc141ec45824835f349db64de49343a4afcf32fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depth-image-proc depthai depthai-bridge depthai-descriptions depthai-ros-msgs foxglove-msgs image-transport message-filters nodelet opencv opencv.cxxdev robot-state-publisher ros-environment roscpp rospy sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The depthai_examples package";
    license = with lib.licenses; [ mit ];
  };
}
