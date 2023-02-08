
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tuw-aruco, tuw-checkerboard, tuw-ellipses, tuw-marker-pose-estimation }:
buildRosPackage {
  pname = "ros-melodic-tuw-marker-detection";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tuw-robotics";
        repo = "tuw_marker_detection-release";
        rev = "release/melodic/tuw_marker_detection/0.1.1-1";
        sha256 = "sha256-nTdbRMybKoHGWdmluoH+dgaLyy/3InE7c3sb1icb0WU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tuw-aruco tuw-checkerboard tuw-ellipses tuw-marker-pose-estimation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_marker_detection package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
