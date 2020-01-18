
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, asio, cmake, fastcdr, fastrtps }:
buildRosPackage {
  pname = "ros-crystal-microxrcedds-agent";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/micro-ROS/microxrcedds_agent-release/archive/release/crystal/microxrcedds_agent/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "e803c907ee996f9fe855a0eb232a56bdbdb0bb29b891abe8966c036683afc205";
  };

  buildType = "cmake";
  buildInputs = [ asio ];
  propagatedBuildInputs = [ fastcdr fastrtps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''DDS-XCRE agent implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
