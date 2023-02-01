
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, pkg-config, rosbash, rosconsole, roscpp, roscpp-serialization, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-camera-calibration-parsers";
  version = "1.12.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "image_common-release";
        rev = "release/noetic/camera_calibration_parsers/1.12.0-1";
        sha256 = "sha256-DPbEY0vEuZJ98NqlibpJh7fy81kdRbeuYw7Lp1ofRso=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config rosconsole ];
  checkInputs = [ rosbash rosunit ];
  propagatedBuildInputs = [ boost libyamlcpp roscpp roscpp-serialization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
