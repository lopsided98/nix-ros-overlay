
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-gazebo-thermal-camera, tf, tf2-ros, velodyne-gazebo-plugins, xacro }:
buildRosPackage {
  pname = "ros-noetic-hector-sensors-description";
  version = "0.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_models-release";
        rev = "release/noetic/hector_sensors_description/0.5.2-1";
        sha256 = "sha256-2t8SsE9+KS6arTqx3g7Rcz25jvAkSSTxPEE3g7ti4/g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-gazebo-thermal-camera tf tf2-ros velodyne-gazebo-plugins xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_sensors_description contains URDF xacro macros for sensors, so they are easily attachable to robot models and usable in gazebo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
