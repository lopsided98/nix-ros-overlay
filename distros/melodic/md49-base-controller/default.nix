
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, md49-messages, md49-serialport, message-generation, message-runtime, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-md49-base-controller";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Scheik";
        repo = "md49_base_controller-release";
        rev = "release/melodic/md49_base_controller/0.1.4-1";
        sha256 = "sha256-3BgtWXm7pLa68elUmRy6HCgiIpseOGYRJd+rubEZUXU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs md49-messages md49-serialport message-runtime roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The md49_base_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
