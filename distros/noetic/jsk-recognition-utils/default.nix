
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-view, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, libyamlcpp, message-generation, message-runtime, pcl-msgs, pcl-ros, python3Packages, pythonPackages, qt5, sensor-msgs, std-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition-utils";
  version = "1.2.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_recognition-release";
        rev = "release/noetic/jsk_recognition_utils/1.2.15-1";
        sha256 = "sha256-k3WWrIY2lKmJ0VvcGmxEsm91VbbLBxpDkjh/8aHCxs4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin dynamic-reconfigure message-generation python3Packages.setuptools pythonPackages.cython qt5.qtbase ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs image-geometry image-view jsk-recognition-msgs jsk-topic-tools libyamlcpp message-runtime pcl-msgs pcl-ros python3Packages.scikitimage pythonPackages.chainer sensor-msgs std-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
