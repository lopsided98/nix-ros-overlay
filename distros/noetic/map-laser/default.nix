
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-filters, nav-msgs, roslaunch, roslint, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-map-laser";
  version = "0.0.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "laser_filtering_release";
        rev = "release/noetic/map_laser/0.0.5-1";
        sha256 = "sha256-0QY1xNgy/QF2t/q05OFhXNeajn3TY/DyNN9axd6S+nI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ laser-filters nav-msgs rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters a laser scan to remove points that are in the current static map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
