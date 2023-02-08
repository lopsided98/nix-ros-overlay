
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gst_all_1, nettools, networkmanager, pkg-config, procps, unixtools }:
buildRosPackage {
  pname = "ros-noetic-clpe";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "canlab-co";
        repo = "CLPE_G_NVP2650D_SDK-ros-release";
        rev = "release/noetic/clpe/0.1.1-1";
        sha256 = "sha256-lYeqbmx4YnEN/ZD3I/ufk2s0MgsloJ3usbGQ7GtSesc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  propagatedBuildInputs = [ gst_all_1.gst-plugins-base nettools networkmanager procps unixtools.ping ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''clpe sdk'';
    license = with lib.licenses; [ asl20 ];
  };
}
