
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libpcan, catkin, cob-utilities, socketcan-interface, libntcan }:
buildRosPackage {
  pname = "ros-kinetic-cob-generic-can";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_generic_can/0.7.0-1.tar.gz;
    sha256 = "be9be898b75c82a0edf79f5d2e656a467c6d7e888013e702ae1434ad2138573c";
  };

  buildInputs = [ libntcan cob-utilities libpcan socketcan-interface ];
  propagatedBuildInputs = [ libntcan cob-utilities libpcan socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_generic_can provides an interface for nodes on a can-bus and examplary wrappers for two PeakSys-can-libs. When a can-bus-device is generated (for an example see base_dirve_chain) you can use generic_can to create as many itfs as there will be components communicating via this can-bus. Assign type of the can communication device (e.g. usb-to-can or can-card of a specific vendor) and can-address of the target device. This package comes with wrappers for PeakSys and PeakSysUSB adapters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
