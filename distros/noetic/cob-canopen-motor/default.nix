
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-generic-can, cob-utilities, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cob-canopen-motor";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_canopen_motor/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "b5985433a7cd5a21990ebf3561b4535016970835fa59629b2e24ad2f6eae4ab2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-generic-can cob-utilities roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The package cob_canopen_motor implements a controller-drive component which is connected to a can-bus and works with a canopen-interface. &quot;CanDriveItf&quot; provides a - more or less - generic interface to the controller-drive components. &quot;CanDrvie...&quot; then implements a specific setup, e.g. an ELMO Harmonica Controller in case of the &quot;CanDriveHarmonica&quot;.";
    license = with lib.licenses; [ asl20 ];
  };
}
