
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-utilities, catkin, cob-generic-can, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-canopen-motor";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_canopen_motor/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "d2ab0ab8555d51b0fe192028504d8202978e22b34b0e72a0046231893c391dd3";
  };

  buildType = "catkin";
  buildInputs = [ cob-utilities cob-generic-can roscpp ];
  propagatedBuildInputs = [ cob-utilities cob-generic-can roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_canopen_motor implements a controller-drive component which is connected to a can-bus and works with a canopen-interface. &quot;CanDriveItf&quot; provides a - more or less - generic interface to the controller-drive components. &quot;CanDrvie...&quot; then implements a specific setup, e.g. an ELMO Harmonica Controller in case of the &quot;CanDriveHarmonica&quot;.'';
    license = with lib.licenses; [ asl20 ];
  };
}
