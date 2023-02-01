
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-computer-status-msgs";
  version = "2.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "130s";
        repo = "computer_status_msgs-release";
        rev = "release/noetic/computer_status_msgs/2.1.0-1";
        sha256 = "sha256-FgVw4PNwtA2MUSIEBO2nWBt19mEMJ/1oGYnaf0BZfWw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages definitions for representing computer's hardware state, such as battery information, GPU, some miscellaneous sensors. Format is in ROS. Originally developed at <a href="https://github.com/PR2/pr2_common/tree/e64f0362b7bff0f4d1d9916f805cf91ad561b439/pr2_msgs">pr2_common repository</a>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
