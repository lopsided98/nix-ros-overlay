
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, allocators, catkin, lockfree, rosatomic, roscpp, roslib, rosunit, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosrt";
  version = "1.0.25-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_realtime-release";
        rev = "release/noetic/rosrt/1.0.25-1";
        sha256 = "sha256-sa4sVy7EGPoChDqb9dHWoKXn8ioisLi/5c77xvpTtbQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ allocators lockfree rosatomic roscpp roslib rosunit std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosrt provides classes for interfacing with ROS from within realtime systems, such as realtime-safe Publisher and Subscriber classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
