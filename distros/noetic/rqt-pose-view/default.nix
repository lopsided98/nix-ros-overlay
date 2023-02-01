
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gl-dependency, python-qt-binding, python3Packages, rospy, rostopic, rqt-gui, rqt-gui-py, rqt-py-common, tf }:
buildRosPackage {
  pname = "ros-noetic-rqt-pose-view";
  version = "0.5.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_pose_view-release";
        rev = "release/noetic/rqt_pose_view/0.5.11-1";
        sha256 = "sha256-+peOXjaIt02xZwc8iHNQY7Ur4XIhOIJJiPPZqSvWvVU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs gl-dependency python-qt-binding python3Packages.pyopengl python3Packages.rospkg rospy rostopic rqt-gui rqt-gui-py rqt-py-common tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pose_view provides a GUI plugin for visualizing 3D poses.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
