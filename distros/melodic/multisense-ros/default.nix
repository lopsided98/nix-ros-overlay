
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, dynamic-reconfigure, genmsg, geometry-msgs, image-geometry, image-transport, libjpeg_turbo, libyamlcpp, message-generation, message-runtime, multisense-lib, rosbag, roscpp, sensor-msgs, std-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-multisense-ros";
  version = "4.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "carnegieroboticsllc";
        repo = "multisense_ros-release";
        rev = "release/melodic/multisense_ros/4.0.4-1";
        sha256 = "sha256-J9JGrFWZmLhh6HFPGocH6YM2nJZU/SHhiB82gbJ0u9k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin libyamlcpp ];
  propagatedBuildInputs = [ angles cv-bridge dynamic-reconfigure genmsg geometry-msgs image-geometry image-transport libjpeg_turbo message-generation message-runtime multisense-lib rosbag roscpp sensor-msgs std-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin libyamlcpp ];

  meta = {
    description = ''multisense_ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
