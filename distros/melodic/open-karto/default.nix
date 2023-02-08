
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-open-karto";
  version = "1.2.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "open_karto-release";
        rev = "release/melodic/open_karto/1.2.3-1";
        sha256 = "sha256-an1MHS1SO7rFm99hNFvi0T0mT1BcUPIwaaYuARY/MUs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
