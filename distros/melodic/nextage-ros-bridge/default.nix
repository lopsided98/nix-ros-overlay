
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, catkin, hironx-ros-bridge, nextage-description, roslint, rostest, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-nextage-ros-bridge";
  version = "0.8.6-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_nextage-release";
        rev = "release/melodic/nextage_ros_bridge/0.8.6-3";
        sha256 = "sha256-D/1PXfeCoNScw3VJanjlXxhpLQtwcaWHYq9rpzjY010=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ar-track-alvar hironx-ros-bridge nextage-description stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A main ROS interface for developers and users of <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc. Developers can build their own application that takes control over Nextage via this package. Interface for both ROS and <a href="http://openrtm.org/">OpenRTM</a> is provided.'';
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
