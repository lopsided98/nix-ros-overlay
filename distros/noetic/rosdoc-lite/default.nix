
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, doxygen, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-rosdoc-lite";
  version = "0.2.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosdoc_lite-release";
        rev = "release/noetic/rosdoc_lite/0.2.10-1";
        sha256 = "sha256-4v9PL8U5IASfNKTY9nkrs+C6PlfRXeDOKELo+VFoDMo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ doxygen genmsg python3Packages.catkin-pkg python3Packages.kitchen python3Packages.pyyaml python3Packages.rospkg python3Packages.sphinx ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This ROS package wraps documentation tools like doxygen, sphinx,
    and epydoc, making it convenient to generate ROS package
    documentation.

    It also generates online documentation for the ROS wiki.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
