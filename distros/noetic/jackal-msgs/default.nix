
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-jackal-msgs";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_msgs/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "f2328e94dfd40e94174a5f0cd73e78a2774c0c042f274b2004fc4bb886faecbf";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Messages exclusive to Jackal, especially for representing low-level motor commands and sensors.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
