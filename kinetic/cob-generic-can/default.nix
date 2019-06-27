
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libpcan, catkin, cob-utilities, socketcan-interface, libntcan }:
buildRosPackage {
  pname = "ros-kinetic-cob-generic-can";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_generic_can/0.6.14-1.tar.gz;
    sha256 = "e7044745399dc35bd9172e49cc22ec815321c7523366a086a58f1cc6445fabbc";
  };

  buildInputs = [ libntcan cob-utilities libpcan socketcan-interface ];
  propagatedBuildInputs = [ libntcan cob-utilities libpcan socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_generic_can provides an interface for nodes on a can-bus and examplary wrappers for two PeakSys-can-libs. When a can-bus-device is generated (for an example see base_dirve_chain) you can use generic_can to create as many itfs as there will be components communicating via this can-bus. Assign type of the can communication device (e.g. usb-to-can or can-card of a specific vendor) and can-address of the target device. This package comes with wrappers for PeakSys and PeakSysUSB adapters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
