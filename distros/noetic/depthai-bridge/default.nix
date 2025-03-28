
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, robot-state-publisher, ros-environment, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, urdf, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-bridge";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_bridge/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "726173ef90bdea41437e23e4025860e3cebf76eb96d46c6931869f3156833fed";
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
