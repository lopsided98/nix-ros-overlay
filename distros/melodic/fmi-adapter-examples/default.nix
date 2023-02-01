
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fmi-adapter, roscpp, rqt-plot }:
buildRosPackage {
  pname = "ros-melodic-fmi-adapter-examples";
  version = "1.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "boschresearch";
        repo = "fmi_adapter-release";
        rev = "release/melodic/fmi_adapter_examples/1.0.4-1";
        sha256 = "sha256-vMeNdWmjucn8ZM2ReMjUR9P3TI7KODdr0GgeJOYNQvg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fmi-adapter roscpp rqt-plot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides small examples for use of the fmi_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
