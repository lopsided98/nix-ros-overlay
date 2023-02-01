
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-generic-can, cob-utilities, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cob-canopen-motor";
  version = "0.7.14-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_driver-release";
        rev = "release/noetic/cob_canopen_motor/0.7.14-1";
        sha256 = "sha256-NXJfuJ8WyU8x+RuNHAW6vp9cAzo7ih5et+d6J43dShg=";
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
