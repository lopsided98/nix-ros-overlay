
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, ncurses, rosbag-storage, roscpp, rosfmt, tf2-ros, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-rosbag-fancy";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "xqms";
        repo = "rosbag_fancy-release";
        rev = "release/melodic/rosbag_fancy/0.2.0-1";
        sha256 = "sha256-AJtL3UrlTzffPR5wZErOiecGR2K4cKqctovCyQTlhH0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost ncurses rosbag-storage roscpp rosfmt tf2-ros topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosbag with terminal UI'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
