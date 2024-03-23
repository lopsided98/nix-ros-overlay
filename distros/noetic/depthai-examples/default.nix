
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, foxglove-msgs, image-transport, message-filters, nodelet, opencv, robot-state-publisher, ros-environment, roscpp, rospy, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-examples";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_examples/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "6c5a222ffe70fb29ec118a32a3db51771a74a6546451773565387717de737b8d";
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
