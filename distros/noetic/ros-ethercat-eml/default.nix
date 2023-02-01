
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ros-ethercat-eml";
  version = "0.4.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "shadow-robot";
        repo = "ros_ethercat_eml-release";
        rev = "release/noetic/ros_ethercat_eml/0.4.0-2";
        sha256 = "sha256-55GMou8QkdmJmQxZ5Ur/TDcDMO66gv+88UE+eFcI5/Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for use wiht ros_ethercar package
      based on the work done at Flanders' Mechatronics Technology Centre and Willow Garage.'';
    license = with lib.licenses; [ "GPL" ];
  };
}
