
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, openssl, pythonPackages, roslib, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-async-web-server-cpp";
  version = "1.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fkie-release";
        repo = "async_web_server_cpp-release";
        rev = "release/melodic/async_web_server_cpp/1.0.3-1";
        sha256 = "sha256-S72a09saKwNEGbxvzKD79vbsvzC1mjhbHQU2YtkoKOw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin openssl ];
  checkInputs = [ pythonPackages.websocket_client roslib rospy rostest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Asynchronous Web/WebSocket Server in C++'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
