
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libpcan, catkin, cob-utilities, socketcan-interface, libntcan }:
buildRosPackage {
  pname = "ros-kinetic-cob-generic-can";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_generic_can/0.6.13-0.tar.gz;
    sha256 = "a46bfd8e8c67b189a95c60c4e4a3bfdbc07d70195bc95f0be86949979249747a";
  };

  buildInputs = [ libntcan cob-utilities libpcan socketcan-interface ];
  propagatedBuildInputs = [ libntcan cob-utilities libpcan socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_generic_can provides an interface for nodes on a can-bus and examplary wrappers for two PeakSys-can-libs. When a can-bus-device is generated (for an example see base_dirve_chain) you can use generic_can to create as many itfs as there will be components communicating via this can-bus. Assign type of the can communication device (e.g. usb-to-can or can-card of a specific vendor) and can-address of the target device. This package comes with wrappers for PeakSys and PeakSysUSB adapters.'';
    #license = lib.licenses.Apache 2.0;
  };
}
