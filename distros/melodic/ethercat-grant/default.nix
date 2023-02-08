
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ethercat-grant";
  version = "0.2.5";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "shadow-robot";
        repo = "ethercat_grant-release";
        rev = "release/melodic/ethercat_grant/0.2.5-0";
        sha256 = "sha256-OkTSYTlJNRz+xx20lY+Cn5gfnhsXFwEhWEexXmII1JM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libcap roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
