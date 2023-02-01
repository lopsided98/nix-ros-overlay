
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rocon-console, rocon-ebnf, rocon-interactions, rocon-launch, rocon-master-info, rocon-python-comms, rocon-python-redis, rocon-python-utils, rocon-python-wifi, rocon-semantic-version, rocon-uri }:
buildRosPackage {
  pname = "ros-melodic-rocon-tools";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_tools/0.3.2-0";
        sha256 = "sha256-lLBnd2BXe4Qaj0Dy6Gx3kKHt+mm1E6U1z/HwZG0owzk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rocon-console rocon-ebnf rocon-interactions rocon-launch rocon-master-info rocon-python-comms rocon-python-redis rocon-python-utils rocon-python-wifi rocon-semantic-version rocon-uri ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and tools developed for rocon, but usable beyond the boundaries
    of rocon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
