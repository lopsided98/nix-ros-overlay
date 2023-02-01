
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mongodb-store, mongodb-store-msgs, roseus, rostest }:
buildRosPackage {
  pname = "ros-melodic-roseus-mongo";
  version = "1.7.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_roseus-release";
        rev = "release/melodic/roseus_mongo/1.7.4-1";
        sha256 = "sha256-lBzTLlNnA5xz1ZO89lxkiYHWiru3vkte2PuzsyvZ2ww=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ mongodb-store mongodb-store-msgs roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roseus_mongo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
