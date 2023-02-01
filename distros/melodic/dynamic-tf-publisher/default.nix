
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, rospy, tf }:
buildRosPackage {
  pname = "ros-melodic-dynamic-tf-publisher";
  version = "2.2.12-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_common-release";
        rev = "release/melodic/dynamic_tf_publisher/2.2.12-1";
        sha256 = "sha256-SvIdIgTT5O7cGJNR73ecMOhdNOygMflMdawhghm2A+Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin dynamic-reconfigure message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''dynamically set the tf trensformation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
