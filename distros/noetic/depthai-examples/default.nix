
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, foxglove-msgs, image-transport, message-filters, nodelet, opencv, robot-state-publisher, ros-environment, roscpp, rospy, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-examples";
  version = "2.10.5-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_examples/2.10.5-1.tar.gz";
    name = "2.10.5-1.tar.gz";
    sha256 = "77bc4ea47dda255c73f734ebac1fd6a6b13dc693b59897fcb3bf153bbb76f71d";
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
