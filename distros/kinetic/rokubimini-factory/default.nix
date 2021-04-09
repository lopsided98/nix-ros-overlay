
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, rokubimini, rokubimini-bus-manager, rokubimini-ethercat, rokubimini-serial }:
buildRosPackage {
  pname = "ros-kinetic-rokubimini-factory";
  version = "0.5.9-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/kinetic/rokubimini_factory/0.5.9-2/bota_driver-release-release-kinetic-rokubimini_factory-0.5.9-2.tar.gz";
    name = "bota_driver-release-release-kinetic-rokubimini_factory-0.5.9-2.tar.gz";
    sha256 = "806780df2db3b4735a3da5c7f58de57db4dee9ef7dae45061f1128f9366bf976";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libyamlcpp rokubimini rokubimini-bus-manager rokubimini-ethercat rokubimini-serial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library deriving the abstract communication interface classes in the rokubimini library for EtherCAT.'';
    license = with lib.licenses; [ asl20 ];
  };
}
