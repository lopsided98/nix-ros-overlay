
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-noetic-slime-wrapper";
  version = "0.4.17-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "code-iai-release";
        repo = "ros_emacs_utils-release";
        rev = "release/noetic/slime_wrapper/0.4.17-1";
        sha256 = "sha256-aCxnd/kx4RTdt0150mJ9QBl88An1T8V6UeLl0r3sKTk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for slime'';
    license = with lib.licenses; [ publicDomain ];
  };
}
