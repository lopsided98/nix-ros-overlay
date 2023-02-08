
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-abb-resources";
  version = "1.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "abb-release";
        rev = "release/melodic/abb_resources/1.3.1-1";
        sha256 = "sha256-vFZefdbj4LjTmcpGSNDAi8bp+XMVyG2UyO0aEow3zsE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Shared configuration data for ABB manipulators.
    </p>
    <p>
      This package contains common urdf / xacro resources used by
      ABB related packages.
    </p>'';
    license = with lib.licenses; [ asl20 ];
  };
}
