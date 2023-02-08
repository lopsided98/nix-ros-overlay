
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mongodb-store, openssl, python3Packages, rosgraph, roslib, rospy, rostopic, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mongodb-log";
  version = "0.6.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "strands-project-releases";
        repo = "mongodb_store";
        rev = "release/noetic/mongodb_log/0.6.0-1";
        sha256 = "sha256-cZ/XWiyyPvvH9cE2yUKHtpLOLXuWr4gRaNxeOoZbnJk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin openssl ];
  propagatedBuildInputs = [ mongodb-store python3Packages.pymongo rosgraph roslib rospy rostopic sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mongodb_log package'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
