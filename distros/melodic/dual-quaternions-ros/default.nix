
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dual-quaternions, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-dual-quaternions-ros";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Achllle";
        repo = "dual_quaternions_ros-release";
        rev = "release/melodic/dual_quaternions_ros/0.1.4-1";
        sha256 = "sha256-9HlzJw1t6/8gkDmdGVExS7qxjWPEriEnJ2kSy5DZCqs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dual-quaternions geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs from and to dual quaternions'';
    license = with lib.licenses; [ mit ];
  };
}
