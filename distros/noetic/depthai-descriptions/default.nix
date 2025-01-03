
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-noetic-depthai-descriptions";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_descriptions/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "416e6316dffe63238a4a2785fcf5371a4b17a20e5a18d9d3dec6685ca198073a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The depthai_descriptions package";
    license = with lib.licenses; [ mit ];
  };
}
