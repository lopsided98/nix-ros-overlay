
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-calibration }:
buildRosPackage {
  pname = "ros-melodic-fetch-calibration";
  version = "0.8.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_ros-release";
        rev = "release/melodic/fetch_calibration/0.8.3-1";
        sha256 = "sha256-wztLZvs91TQpcYRI4FIlB7v76XBQc3G6mzZuqlbusrc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-calibration ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for calibrating Fetch using the 'robot_calibration' package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
