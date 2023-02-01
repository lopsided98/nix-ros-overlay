
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lauv-control, lauv-description, rosbag, uuv-control-utils }:
buildRosPackage {
  pname = "ros-melodic-lauv-gazebo";
  version = "0.1.6";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "lauv_gazebo-release";
        rev = "release/melodic/lauv_gazebo/0.1.6-0";
        sha256 = "sha256-gC6cqSli0pHr2r8KBo05Z9K0xdOUy3bwz1fpWIpNsHo=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lauv-control lauv-description rosbag uuv-control-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Sample launch files to start a simulated LAUV in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
