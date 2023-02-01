
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, robot-localization, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-heron-control";
  version = "0.3.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "heron-release";
        rev = "release/melodic/heron_control/0.3.4-1";
        sha256 = "sha256-iUddH8vBWHyrp3GIk4z4+IhAWysPl9DsKXj9k/RTCLE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy robot-localization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Control package for Heron'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
