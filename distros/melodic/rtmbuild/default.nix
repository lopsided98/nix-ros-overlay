
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, blas, catkin, cmake-modules, liblapack, message-generation, message-runtime, omniorb, openrtm-aist, openrtm-aist-python, pkg-config, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rtmbuild";
  version = "1.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_common-release";
        rev = "release/melodic/rtmbuild/1.4.3-1";
        sha256 = "sha256-8hHVu4LzN3Xd9NFNFDFPM64I+leMBgCpWMiMQNVTcdg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ blas cmake-modules liblapack message-generation message-runtime omniorb openrtm-aist openrtm-aist-python pkg-config rostest std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Build scripts for OpenRTM and OpenHRP'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
