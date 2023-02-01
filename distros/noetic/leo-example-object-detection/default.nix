
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-object-detection";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fictionlab-gbp";
        repo = "leo_examples-release";
        rev = "release/noetic/leo_example_object_detection/0.1.1-1";
        sha256 = "sha256-oQ9LdtpwIn77iT78upM3aYJH9i/1wfC+z8x9Fy18j+o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An object Detection Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
