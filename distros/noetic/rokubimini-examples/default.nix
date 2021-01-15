
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-examples";
  version = "0.5.8-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/noetic/rokubimini_examples/0.5.8-1";
    name = "archive.tar.gz";
    sha256 = "c6d557a91b23578f71da48dc93e20b2795a0f4d25fb058e01e765f1204bc3934";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
