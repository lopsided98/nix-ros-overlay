
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, console-bridge, linuxHeaders, rosunit, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-socketcan-interface";
  version = "0.8.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-industrial-release";
        repo = "ros_canopen-release";
        rev = "release/noetic/socketcan_interface/0.8.5-1";
        sha256 = "sha256-U9+/4Xc3B/6kk6iMvN9fcMp6Dra0p7kJibdjmoUZjg4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit xmlrpcpp ];
  propagatedBuildInputs = [ boost class-loader console-bridge linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
