
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rospy }:
buildRosPackage {
  pname = "ros-noetic-monkeywrench";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/cst0/ros-monkeywrench-release/archive/release/noetic/monkeywrench/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "83679b45cddbd1c95865ea08962840ab0cd6107d9407873b0b83baf8a0e13273";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''throw a monkeywrench in your robot code'';
    license = with lib.licenses; [ asl20 ];
  };
}
