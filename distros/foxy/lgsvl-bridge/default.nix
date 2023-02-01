
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-ros, boost, lgsvl-msgs, nav-msgs, rcl, rcutils, rosgraph-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-lgsvl-bridge";
  version = "0.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "lgsvl";
        repo = "ros2-lgsvl-bridge-release";
        rev = "release/foxy/lgsvl_bridge/0.2.1-1";
        sha256 = "sha256-PHh3ZRhcvdGEnYp6vBdFOgz0g0W49FVAlWOboKtMoC8=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ ament-cmake-ros boost lgsvl-msgs nav-msgs rcl rcutils rosgraph-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''LGSVL Simulator Bridge'';
    license = with lib.licenses; [ bsd3 ];
  };
}
