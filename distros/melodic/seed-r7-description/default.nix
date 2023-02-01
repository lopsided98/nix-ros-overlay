
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-description";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "seed-solutions";
        repo = "seed_r7_ros_pkg-release";
        rev = "release/melodic/seed_r7_description/0.3.3-1";
        sha256 = "sha256-kYPw52dm4oyH1FD/RPutVKQdItBt3HcLWYI/uaFPCxQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
