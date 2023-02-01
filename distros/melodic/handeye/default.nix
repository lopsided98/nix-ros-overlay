
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, baldor, catkin, criutils, geometry-msgs, message-generation, message-runtime, pythonPackages, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-handeye";
  version = "0.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "crigroup";
        repo = "handeye-release";
        rev = "release/melodic/handeye/0.1.1-2";
        sha256 = "sha256-FUjDbHO991JhcwudP7DtSPSB+wXOgBNOmJk//ICXQsQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ baldor criutils geometry-msgs message-runtime pythonPackages.enum34 pythonPackages.matplotlib pythonPackages.numpy pythonPackages.scipy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The handeye package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
