
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, hri, hri-msgs, qt5, roscpp, rviz }:
buildRosPackage {
  pname = "ros-noetic-hri-rviz";
  version = "0.3.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros4hri";
        repo = "hri_rviz-release";
        rev = "release/noetic/hri_rviz/0.3.1-1";
        sha256 = "sha256-R8LgCzW4vePO4iQl9rLbJaGBor95k+jNo7gxbIW66B8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge hri hri-msgs qt5.qtbase roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains several rviz plugins to visualize HRI-related topics (like face/body region of interests, 3D skeletons...)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
