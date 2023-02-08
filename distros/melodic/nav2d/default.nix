
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav2d-exploration, nav2d-karto, nav2d-localizer, nav2d-msgs, nav2d-navigator, nav2d-operator, nav2d-remote, nav2d-tutorials }:
buildRosPackage {
  pname = "ros-melodic-nav2d";
  version = "0.4.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "skasperski";
        repo = "navigation_2d-release";
        rev = "release/melodic/nav2d/0.4.2-0";
        sha256 = "sha256-Kx2ARuG2JpAxRWAGpTmbyM5OYXfsM7Mde1/xrR922rY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nav2d-exploration nav2d-karto nav2d-localizer nav2d-msgs nav2d-navigator nav2d-operator nav2d-remote nav2d-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta-Package containing modules for 2D-Navigation'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
