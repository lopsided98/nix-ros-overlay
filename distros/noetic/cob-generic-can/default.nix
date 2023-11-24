
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-utilities, libntcan, libpcan, socketcan-interface }:
buildRosPackage {
  pname = "ros-noetic-cob-generic-can";
  version = "0.7.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_generic_can/0.7.15-1.tar.gz";
    name = "0.7.15-1.tar.gz";
    sha256 = "af7d077b04938312aeb4e93615c0bb2c83e8bba1a4bb3d9e9d77f0050c214a8b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-utilities libntcan libpcan socketcan-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_generic_can provides an interface for nodes on a can-bus and examplary wrappers for two PeakSys-can-libs. When a can-bus-device is generated (for an example see base_dirve_chain) you can use generic_can to create as many itfs as there will be components communicating via this can-bus. Assign type of the can communication device (e.g. usb-to-can or can-card of a specific vendor) and can-address of the target device. This package comes with wrappers for PeakSys and PeakSysUSB adapters.'';
    license = with lib.licenses; [ asl20 ];
  };
}
