
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-allocators";
  version = "1.0.25";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_realtime-release";
        rev = "release/melodic/allocators/1.0.25-0";
        sha256 = "sha256-kh95NO/roS12CTvVD5hRxNh9+JqxX+s+LmK3hUfGHJY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains aligned allocation functions, as well as an STL-compatible AlignedAllocator class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
