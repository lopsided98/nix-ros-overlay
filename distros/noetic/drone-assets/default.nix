
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros }:
buildRosPackage {
  pname = "ros-noetic-drone-assets";
  version = "1.4.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "JdeRobot";
        repo = "drones-release";
        rev = "release/noetic/drone_assets/1.4.2-1";
        sha256 = "sha256-mp9xtlJyumfzLlKhmu+p/wEAN5aKJDvB096q7CRfM3Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
