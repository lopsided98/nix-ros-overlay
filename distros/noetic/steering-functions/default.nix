
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, costmap-2d, eigen, geometry-msgs, nav-msgs, roscpp, roslib, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-steering-functions";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nobleo";
        repo = "steering_functions-release";
        rev = "release/noetic/steering_functions/0.1.1-1";
        sha256 = "sha256-+w+22INXNz8L6kUVuda9BjzfpQrOFbmEUCtQWKiyCso=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ costmap-2d eigen geometry-msgs nav-msgs roscpp roslib tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The steering_functions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
