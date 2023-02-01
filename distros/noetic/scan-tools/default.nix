
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-ortho-projector, laser-scan-matcher, laser-scan-sparsifier, laser-scan-splitter, ncd-parser, polar-scan-matcher, scan-to-cloud-converter }:
buildRosPackage {
  pname = "ros-noetic-scan-tools";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "scan_tools-release";
        rev = "release/noetic/scan_tools/0.3.3-1";
        sha256 = "sha256-srfyjN+cxm9kXrXUE7QtjRqaF7Ehi8SQ0rmaa04TDZg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-ortho-projector laser-scan-matcher laser-scan-sparsifier laser-scan-splitter ncd-parser polar-scan-matcher scan-to-cloud-converter ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Laser scan processing tools.'';
    license = with lib.licenses; [ bsdOriginal lgpl3Only ];
  };
}
