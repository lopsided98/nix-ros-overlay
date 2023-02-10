
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depthai, depthai-bridge, depthai-examples, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai-ros/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "a4970edb501654b2d5edd10de9bb6d6cd8427a66c8c0b04ce4931c0364f45c4a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-examples depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai-ros package'';
    license = with lib.licenses; [ mit ];
  };
}
