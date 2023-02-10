
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, robot-state-publisher, ros-environment, roscpp, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-bridge";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_bridge/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "3a991482ea739af84895998b90bc761227a7b00833d1d5b07cdd48f168fb2082";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost camera-info-manager cv-bridge depthai depthai-ros-msgs image-transport opencv robot-state-publisher ros-environment roscpp sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
