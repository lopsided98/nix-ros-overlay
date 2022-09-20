
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-generic-can, cob-utilities, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-canopen-motor";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_canopen_motor/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "6ce9cd2b162e853b67b70b9ef1dece0b6586b026eaffb40e6704c1563dd0c027";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-generic-can cob-utilities roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The package cob_canopen_motor implements a controller-drive component which is connected to a can-bus and works with a canopen-interface. &quot;CanDriveItf&quot; provides a - more or less - generic interface to the controller-drive components. &quot;CanDrvie...&quot; then implements a specific setup, e.g. an ELMO Harmonica Controller in case of the &quot;CanDriveHarmonica&quot;.'';
    license = with lib.licenses; [ asl20 ];
  };
}
