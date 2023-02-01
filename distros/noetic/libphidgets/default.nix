
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb1 }:
buildRosPackage {
  pname = "ros-noetic-libphidgets";
  version = "0.6.18-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_extern-release";
        rev = "release/noetic/libphidgets/0.6.18-1";
        sha256 = "sha256-2fJ7qdTQgQaFA7seFPxKuAKW8aM7JcD8kbqtKgpQM64=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidgets to use it as a ros dependency'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
