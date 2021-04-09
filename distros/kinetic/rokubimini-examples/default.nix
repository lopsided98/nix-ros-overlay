
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rokubimini, rokubimini-manager }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-examples";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_examples/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_examples-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_examples-0.5.9-2.tar.gz";
    sha256 = "b850b72693022af55f9d9ef5e8f5790e982181e8156c809a56d69bc88fa27498";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rokubimini rokubimini-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
