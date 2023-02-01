
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-utilities";
  version = "0.7.14-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_driver-release";
        rev = "release/noetic/cob_utilities/0.7.14-1";
        sha256 = "sha256-BvY+twjH9kT+JZ3pQbMf90agvjw1wwUNM3qNWM1wj7g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Deprecated
    &quot;cob_utilities&quot; subsumes a number of classes, which are used in the original COb3 software. E.g. &quot;IniFile.h&quot; supports the original inifile structure of Care-O-bot 3. &quot;MathSup.h&quot; provides some basic functions like conversion from degree to radion or norming of angles within +/- PI. The package is currently used while the drivers are ported to ROS and Orocos respectively. Midterm it shall be removed and the ROS structures shall be used for reading parameters during initialization. So, don't use this package in new code!'';
    license = with lib.licenses; [ asl20 ];
  };
}
