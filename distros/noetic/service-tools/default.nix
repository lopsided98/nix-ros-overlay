
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosservice }:
buildRosPackage {
  pname = "ros-noetic-service-tools";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/service_tools/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "e727a4af7067d9cec72fa8b9317d3f0bc2a91cff0a040a92d876483f28a64616";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Service tools";
    license = with lib.licenses; [ asl20 ];
  };
}
