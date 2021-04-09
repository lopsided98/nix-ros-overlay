
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-examples";
  version = "0.5.9-r1";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_examples/0.5.9-1/bota_driver-release-release-noetic-rokubimini_examples-0.5.9-1.tar.gz";
    name = "bota_driver-release-release-noetic-rokubimini_examples-0.5.9-1.tar.gz";
    sha256 = "7e512d9489953961731da769b32de0ae7a42e9b6fc618779a8eb0cad30d16067";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
