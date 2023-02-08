
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt-build, qt-create, qt-tutorials }:
buildRosPackage {
  pname = "ros-melodic-qt-ros";
  version = "0.2.10-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "qt_ros-release";
        rev = "release/melodic/qt_ros/0.2.10-1";
        sha256 = "sha256-dn9Zjm82vrgdPLE4+NVQKbjNWkbEjuW2y8ycBWp77Z4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt-build qt-create qt-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple qt cmake build tools and master-chooser style application template.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
