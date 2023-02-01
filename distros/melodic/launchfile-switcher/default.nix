
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rosnode, rospy }:
buildRosPackage {
  pname = "ros-melodic-launchfile-switcher";
  version = "0.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rb-sapiens";
        repo = "launchfile_switcher-release";
        rev = "release/melodic/launchfile_switcher/0.1.0-1";
        sha256 = "sha256-iUNtcQpbBVRplc/Azz6hYtj3t9j7tHf6N5VzEvhf0Qs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roslaunch rosnode rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The launchfile_switcher package'';
    license = with lib.licenses; [ mit ];
  };
}
