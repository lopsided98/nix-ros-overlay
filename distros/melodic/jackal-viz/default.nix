
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-description, joint-state-publisher, joint-state-publisher-gui, roslaunch, rqt-console, rqt-gui, rqt-robot-monitor, rviz }:
buildRosPackage {
  pname = "ros-melodic-jackal-viz";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "jackal_desktop-release";
        rev = "release/melodic/jackal_viz/0.4.1-1";
        sha256 = "sha256-XliSyOvMI4eL27lfjmVjKDN8HDLl21DbG/kw+1Zfor0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ jackal-description joint-state-publisher joint-state-publisher-gui rqt-console rqt-gui rqt-robot-monitor rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
