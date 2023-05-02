
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-filters, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai-ros/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "4821c21acdab355e387db08a275f9d1ec3afa17b8a42c4dac8bdde7b97c926eb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-descriptions depthai-examples depthai-filters depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The depthai-ros package'';
    license = with lib.licenses; [ mit ];
  };
}
