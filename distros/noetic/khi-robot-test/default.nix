
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs013n-moveit-config, khi-rs080n-moveit-config, moveit-commander, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-khi-robot-test";
  version = "1.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Kawasaki-Robotics";
        repo = "khi_robot-release";
        rev = "release/noetic/khi_robot_test/1.3.0-2";
        sha256 = "sha256-Lu4EgBe+6v78lQf0CQJ1mx2yAqJZveKfi86BMgbhMz8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs013n-moveit-config khi-rs080n-moveit-config moveit-commander rostest ];
  propagatedBuildInputs = [ khi-robot-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
