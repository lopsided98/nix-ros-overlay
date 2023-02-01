
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, python3Packages, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-camera";
  version = "1.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3_autorace_2020_release";
        rev = "release/noetic/turtlebot3_autorace_camera/1.1.1-2";
        sha256 = "sha256-IxFFJdII6nzyCVHxr/PZJi+VytYgdDXdJKuiCbWWj3k=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure python3Packages.opencv3 pythonPackages.enum34 pythonPackages.numpy rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that controls Raspberry Pi Camera, and process the image'';
    license = with lib.licenses; [ asl20 ];
  };
}
