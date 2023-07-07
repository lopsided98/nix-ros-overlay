
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, camera-info-manager, catkin, cv-bridge, depthai, depthai-ros-msgs, image-transport, opencv, ros-environment, roscpp, sensor-msgs, std-msgs, stereo-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-bridge";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_bridge/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "4f9aa89e9b83caa3fe8a8297526a294e7ab5f39162b549e8fa7c720238a5143a";
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
