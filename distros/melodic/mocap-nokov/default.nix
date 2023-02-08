
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, nav-msgs, roscpp, roslaunch, roslint, tf }:
buildRosPackage {
  pname = "ros-melodic-mocap-nokov";
  version = "0.0.2-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "NOKOV-MOCAP";
        repo = "mocap_nokov_release";
        rev = "release/melodic/mocap_nokov/0.0.2-2";
        sha256 = "sha256-C3FyEsBPfjAu/Jrid9RZ44xnLmY/9Aop8tBDicKTqCA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Streaming of Nokov mocap data to tf
    <p>
    This package contains a node that translates motion capture data from an
    nokov rig to tf transforms, poses and 2D poses.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
