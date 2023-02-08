
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uos-common-urdf, uos-diffdrive-teleop, uos-freespace, uos-gazebo-worlds, uos-maps }:
buildRosPackage {
  pname = "ros-melodic-uos-tools";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "uos-tools";
        rev = "release/melodic/uos_tools/1.0.1-1";
        sha256 = "sha256-JdU4UlOGCzbj8F2VQi8pWQfDsbeuVP+ou3lMmU4cYZM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ uos-common-urdf uos-diffdrive-teleop uos-freespace uos-gazebo-worlds uos-maps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various helper utilities not associated with a particular stack'';
    license = with lib.licenses; [ "BSD-&-GPL" ];
  };
}
