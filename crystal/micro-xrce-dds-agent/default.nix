
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fastcdr, cmake, asio, fastrtps }:
buildRosPackage {
  pname = "ros-crystal-micro-xrce-dds-agent";
  version = "1.0.3-r1";

  src = fetchurl {
    url = https://github.com/micro-ROS/Micro-XRCE-DDS-Agent-release/archive/release/crystal/micro-xrce-dds-agent/1.0.3-1.tar.gz;
    sha256 = "7e9ac037a8a10740e8b5a6f8d82989abe922b94ddc402d25a461a34976cb78c7";
  };

  buildInputs = [ fastcdr asio fastrtps ];
  propagatedBuildInputs = [ fastcdr fastrtps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''DDS-XCRE agent implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
