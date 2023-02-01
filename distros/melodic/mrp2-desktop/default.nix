
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrp2-viz }:
buildRosPackage {
  pname = "ros-melodic-mrp2-desktop";
  version = "0.2.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "milvusrobotics";
        repo = "mrp2_desktop-release";
        rev = "release/melodic/mrp2_desktop/0.2.2-2";
        sha256 = "sha256-FXK+yytZp9pAD3/+9XWlCXsXWD5W6AwbDvAbDzN8sX8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrp2-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization tools and configurations for MRP2 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
