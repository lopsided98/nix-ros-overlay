
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, roscpp, rospy, rosunit, sensor-msgs, serial, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-teraranger-array";
  version = "2.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Terabee";
        repo = "teraranger_array-release";
        rev = "release/melodic/teraranger_array/2.0.0-1";
        sha256 = "sha256-tEdVeg6oA71hYVfle/agiCDQrDUga8sjSpiPJD/nR3w=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs message-runtime roscpp rospy sensor-msgs serial std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for multi-sensor arrays from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
