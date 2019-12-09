
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-utilities, libntcan, catkin, socketcan-interface, libpcan }:
buildRosPackage {
  pname = "ros-melodic-cob-generic-can";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_generic_can/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "dafbd06ad919ad96e639e1861fe59ffc33ae31e8f57c69f88ad5a3c58729b59a";
  };

  buildType = "catkin";
  buildInputs = [ libntcan cob-utilities socketcan-interface libpcan ];
  propagatedBuildInputs = [ libntcan cob-utilities socketcan-interface libpcan ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_generic_can provides an interface for nodes on a can-bus and examplary wrappers for two PeakSys-can-libs. When a can-bus-device is generated (for an example see base_dirve_chain) you can use generic_can to create as many itfs as there will be components communicating via this can-bus. Assign type of the can communication device (e.g. usb-to-can or can-card of a specific vendor) and can-address of the target device. This package comes with wrappers for PeakSys and PeakSysUSB adapters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
