
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pyquaternion }:
buildRosPackage {
  pname = "ros-melodic-dual-quaternions";
  version = "0.3.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Achllle";
        repo = "dual_quaternions-release";
        rev = "release/melodic/dual_quaternions/0.3.2-1";
        sha256 = "sha256-MqSy4w6xMyoGTBTkUhni7eHaHhByXTQ1FXJPUd3du2c=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pyquaternion ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dual quaternion operations'';
    license = with lib.licenses; [ mit ];
  };
}
