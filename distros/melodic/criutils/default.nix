
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, cv-bridge, geometry-msgs, image-geometry, pythonPackages, resource-retriever, rostopic, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-criutils";
  version = "0.1.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "crigroup";
        repo = "criutils-release";
        rev = "release/melodic/criutils/0.1.3-2";
        sha256 = "sha256-/E3IBkg47jW00hoghRE6Dj/OrvasZfxAg1yfi+ojBXg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ baldor cv-bridge geometry-msgs image-geometry pythonPackages.numpy pythonPackages.termcolor resource-retriever rostopic sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The criutils package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
