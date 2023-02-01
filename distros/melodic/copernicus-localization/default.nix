
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-melodic-copernicus-localization";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "copernicus-release";
        rev = "release/melodic/copernicus_localization/1.1.0-1";
        sha256 = "sha256-pwzZbBlC0DHyvRhpO0cDz4sUv3GYc7lLovgiOwbEu/s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_localization package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
