
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-ixblue-ins-msgs";
  version = "0.1.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ixblue";
        repo = "ixblue_ins_stdbin_driver-release";
        rev = "release/noetic/ixblue_ins_msgs/0.1.5-1";
        sha256 = "sha256-mGmykbgOqH5j2XSi0VVw6+MdufbCFUtLo5vYaMvbzJk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ixblue INS defined messages package'';
    license = with lib.licenses; [ mit ];
  };
}
