
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, orocos-kdl, python-orocos-kdl, rostest, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-geometry-msgs";
  version = "0.6.5";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "geometry2-release";
        rev = "release/melodic/tf2_geometry_msgs/0.6.5-0";
        sha256 = "sha256-eyJSm8NOjxlXJlxaVWvYfZ6ubzTJDVmHCWLmPq5AbAw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs orocos-kdl python-orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_geometry_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
