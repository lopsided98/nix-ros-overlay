
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, robot-state-publisher, ros-environment, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, urdf, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-bridge";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_bridge/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "09e842e958052ab3eeda46706a424603bb4430cbbd9dd68bb20477d0201a3315";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost camera-info-manager cv-bridge depthai depthai-ros-msgs image-transport opencv opencv.cxxdev robot-state-publisher ros-environment roscpp sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros urdf vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The depthai_bridge package";
    license = with lib.licenses; [ mit ];
  };
}
