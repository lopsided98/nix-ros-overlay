
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, lusb, nodelet, roscpp, roslaunch, roslib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-can-usb";
  version = "1.0.16-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "DataspeedInc-release";
        repo = "dataspeed_can-release";
        rev = "release/melodic/dataspeed_can_usb/1.0.16-1";
        sha256 = "sha256-qDYokEGVgyvE1BoMRu80KFyjkZniJCpOysGOzLnaosk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslib ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs lusb nodelet roscpp roslaunch std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver to interface with the Dataspeed Inc. USB CAN Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
