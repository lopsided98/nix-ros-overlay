
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leuze-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-leuze-phidget-driver";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa-led";
        repo = "leuze_ros_drivers-release";
        rev = "release/melodic/leuze_phidget_driver/1.0.1-1";
        sha256 = "sha256-PHS/mScTa5E8V+pwrPeqJUBbol/wdWmjxttGxXdiZuw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leuze-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The phidget interface kit driver package for leuze lasers'';
    license = with lib.licenses; [ asl20 ];
  };
}
