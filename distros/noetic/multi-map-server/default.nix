
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL_image, catkin, jsk-tools, libyamlcpp, map-server, nav-msgs, python3Packages, pythonPackages, rosconsole, roscpp, rosmake, rospy, tf }:
buildRosPackage {
  pname = "ros-noetic-multi-map-server";
  version = "2.2.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_common-release";
        rev = "release/noetic/multi_map_server/2.2.12-1";
        sha256 = "sha256-e0aYLRc1kI+gHkjBn9uy+l6RrVim+ePXD+pJDLdDYNU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin jsk-tools python3Packages.pyyaml pythonPackages.pillow rosmake ];
  propagatedBuildInputs = [ SDL_image libyamlcpp map-server nav-msgs rosconsole roscpp rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multi_map_server provides the'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
