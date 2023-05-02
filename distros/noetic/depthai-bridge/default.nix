
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, ros-environment, roscpp, sensor-msgs, std-msgs, stereo-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-bridge";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_bridge/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "42420c14fc323fe24958c8a71dd31ef6f2db8ba818f62ed54ea8fd206461a688";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost camera-info-manager cv-bridge depthai depthai-ros-msgs image-transport opencv ros-environment roscpp sensor-msgs std-msgs stereo-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai_bridge package'';
    license = with lib.licenses; [ mit ];
  };
}
