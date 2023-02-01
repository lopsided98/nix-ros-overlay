
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, control-msgs, nav-msgs, roscpp, rosgraph-msgs, rospy, sensor-msgs, std-srvs, tf-conversions, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-hardware-emulation";
  version = "0.8.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_control-release";
        rev = "release/melodic/cob_hardware_emulation/0.8.12-1";
        sha256 = "sha256-UzDi9hhYKDeF2akHsYaBP1Oiw631ZnXxmIF4Zxb9zXA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib control-msgs nav-msgs roscpp rosgraph-msgs rospy sensor-msgs std-srvs tf-conversions tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hardware_emulation package provides idealized nodes emulating real robot hardware and/or physics simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
