
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rwt-app-chooser, rwt-image-view, rwt-moveit, rwt-plot, rwt-speech-recognition, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-melodic-visualization-rwt";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "visualization_rwt-release";
        rev = "release/melodic/visualization_rwt/0.1.1-1";
        sha256 = "sha256-3cruRexM/a6EZqJjRS4oXTWNJoNUdindwDT+TELeg0A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rwt-app-chooser rwt-image-view rwt-moveit rwt-plot rwt-speech-recognition rwt-utils-3rdparty ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>visualization packages using rwt</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
