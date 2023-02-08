
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-webkit-dependency";
  version = "1.1.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "webkit_dependency-release";
        rev = "release/melodic/webkit_dependency/1.1.0-0";
        sha256 = "sha256-1DKs7C9YuJcIi07pWTq/Ixuz8rAUqbqy1B1AiXT5uNY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyqt5_with_qtwebkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the WebKit dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
