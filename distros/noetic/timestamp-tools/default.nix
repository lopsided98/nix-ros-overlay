
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-timestamp-tools";
  version = "1.6.9-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "driver_common-release";
        rev = "release/noetic/timestamp_tools/1.6.9-1";
        sha256 = "sha256-LQqf9uiKPH4v3b6YSMCfWhpPcVhVynk2fwx4aq7/PyQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is currently for internal use only. Its API may change
    without warning in the future.  This package is deprecated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
