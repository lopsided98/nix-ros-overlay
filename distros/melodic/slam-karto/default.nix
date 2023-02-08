
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, message-filters, nav-msgs, open-karto, rosconsole, roscpp, sensor-msgs, sparse-bundle-adjustment, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-slam-karto";
  version = "0.8.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "slam_karto-release";
        rev = "release/melodic/slam_karto/0.8.1-0";
        sha256 = "sha256-fbQW4B9N+XFFFGgd7nOSL5K1j7WZmvf95ame1KdBmuQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ eigen message-filters nav-msgs open-karto rosconsole roscpp sensor-msgs sparse-bundle-adjustment tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package pulls in the Karto mapping library, and provides a ROS
     wrapper for using it.'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
