
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, cv-bridge, geometry-msgs, image-geometry, python3Packages, resource-retriever, rostopic, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-criutils";
  version = "0.1.4-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "crigroup";
        repo = "criutils-release";
        rev = "release/noetic/criutils/0.1.4-2";
        sha256 = "sha256-R3nSgzoaWF/s9Ra4I460RkOxU9n+TaCjMrPey/4QYQc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ baldor cv-bridge geometry-msgs image-geometry python3Packages.numpy python3Packages.termcolor resource-retriever rostopic sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
