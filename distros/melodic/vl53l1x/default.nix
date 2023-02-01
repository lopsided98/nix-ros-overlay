
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-vl53l1x";
  version = "1.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "okalachev";
        repo = "vl53l1x_ros-release";
        rev = "release/melodic/vl53l1x/1.0.0-1";
        sha256 = "sha256-Cojkizq4TxodpUybeWi2ddEtU+uJggu5FEN8cqTGwqA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''VL53L1X ToF rangefinder driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
