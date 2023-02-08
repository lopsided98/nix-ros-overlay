
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-slider-publisher";
  version = "1.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "oKermorgant";
        repo = "slider_publisher-release";
        rev = "release/noetic/slider_publisher/1.1.1-1";
        sha256 = "sha256-VNxWb+MmxhWvrl79hiTibFWSHximeqBasbcJbGkVNUQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The slider_publisher package'';
    license = with lib.licenses; [ mit ];
  };
}
