
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rail-mesh-icp";
  version = "0.0.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gt-rail-release";
        repo = "rail_mesh_icp-release";
        rev = "release/melodic/rail_mesh_icp/0.0.4-1";
        sha256 = "sha256-DlHOGtNxwFmOypGlx+MaJiEHg3FzMXvRF1SxrUnKNvg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime pcl-conversions pcl-ros roscpp sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enables matching a mesh model file (e.g. STL) to a point cloud using ROS.'';
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
