
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libdlib, libntcan, libpcan, libphidgets, opengm }:
buildRosPackage {
  pname = "ros-noetic-cob-extern";
  version = "0.6.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_extern-release";
        rev = "release/noetic/cob_extern/0.6.18-1";
        sha256 = "sha256-iAe3gJIjpqdU8furIXfKjBnj3Wg8xo0uKkQEIuNk93I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libdlib libntcan libpcan libphidgets opengm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_extern stack contains third party libraries needed for operating Care-O-bot. The packages are downloaded from the manufactorers website and not changed in any way.'';
    license = with lib.licenses; [ "LGPL" "Proprietary" ];
  };
}
