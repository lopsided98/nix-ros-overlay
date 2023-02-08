
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-updater, driver-base, dynamic-reconfigure, image-transport, message-generation, message-runtime, roscpp, rospy, rostest, self-test, sensor-msgs, std-msgs, timestamp-tools }:
buildRosPackage {
  pname = "ros-noetic-wge100-camera";
  version = "1.8.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "wge100_driver-release";
        rev = "release/noetic/wge100_camera/1.8.5-1";
        sha256 = "sha256-x6F+lyigUl13PI82qkXW0LyUe9YB5zeJujpOU+wvEIc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest ];
  propagatedBuildInputs = [ camera-calibration-parsers diagnostic-updater driver-base dynamic-reconfigure image-transport message-runtime roscpp rospy self-test sensor-msgs std-msgs timestamp-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS node and assorted tools to provide access to the WGE100
    camera used in the forearms and the stereo cameras of the PR2
    robot.'';
    license = with lib.licenses; [ "GPL-because-of-list.h-&-other-files-released-under-BSD" ];
  };
}
