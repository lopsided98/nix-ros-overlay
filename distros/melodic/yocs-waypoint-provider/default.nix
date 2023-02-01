
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, libyamlcpp, roscpp, visualization-msgs, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-waypoint-provider";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_waypoint_provider/0.8.2-0";
        sha256 = "sha256-G/8Hp3t3IVWEEKOR+HUsBKTd2QPidJclidEG/TWYAC0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs libyamlcpp roscpp visualization-msgs yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Parse a multiple poses from yaml and provide as topic and service. This package is highly inspired by yocs_waypoints_navi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
