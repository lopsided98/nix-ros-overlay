
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, laser-assembler, laser-filters, robot-state-publisher, sensor-msgs, tf, tf-conversions, urg-node }:
buildRosPackage {
  pname = "ros-noetic-jsk-tilt-laser";
  version = "2.2.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_common-release";
        rev = "release/noetic/jsk_tilt_laser/2.2.12-1";
        sha256 = "sha256-0g9YIl+KFy/5BRAu3Z83tXgP//WdTN6Ivy9XwTw1i84=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ dynamic-reconfigure laser-assembler laser-filters robot-state-publisher sensor-msgs tf tf-conversions urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_tilt_laser package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
