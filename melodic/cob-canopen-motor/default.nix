
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-generic-can, catkin, cob-utilities, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-canopen-motor";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_canopen_motor/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "86143b61b0ff960fb5b1c0b7dd54368d48c553d07b45cb3ee787aea2a58a599e";
  };

  buildType = "catkin";
  buildInputs = [ cob-generic-can roscpp cob-utilities ];
  propagatedBuildInputs = [ cob-generic-can roscpp cob-utilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_canopen_motor implements a controller-drive component which is connected to a can-bus and works with a canopen-interface. &quot;CanDriveItf&quot; provides a - more or less - generic interface to the controller-drive components. &quot;CanDrvie...&quot; then implements a specific setup, e.g. an ELMO Harmonica Controller in case of the &quot;CanDriveHarmonica&quot;.'';
    license = with lib.licenses; [ asl20 ];
  };
}
