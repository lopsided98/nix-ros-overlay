
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-uos-common-urdf";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uos-gbp";
        repo = "uos-tools";
        rev = "release/melodic/uos_common_urdf/1.0.1-1";
        sha256 = "sha256-gbshN8ogiDLAyUJN7zMjms+ZJrLsVMoBTGQQwPoUmMU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-plugins urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains URDF descriptions of the UOS robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
