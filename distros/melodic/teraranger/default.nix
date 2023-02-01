
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, roscpp, sensor-msgs, serial, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-teraranger";
  version = "2.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Terabee";
        repo = "teraranger-release";
        rev = "release/melodic/teraranger/2.1.0-1";
        sha256 = "sha256-2XehN9YWYY+jDfbj7EWiu7ZnnzxjJ2PiJ7aHq/Wsc3Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure roscpp sensor-msgs serial std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides ros nodes for single sensors from Terabee'';
    license = with lib.licenses; [ mit ];
  };
}
