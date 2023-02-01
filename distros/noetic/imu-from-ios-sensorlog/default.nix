
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-imu-from-ios-sensorlog";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pietrocolombo";
        repo = "imu_from_ios_sensorlog-release";
        rev = "release/noetic/imu_from_ios_sensorlog/0.0.1-1";
        sha256 = "sha256-9+0XLcQgSlBt1EnH4uVwbj9+ytuYkKqxjAsgWgWXTQg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp rospy sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The imu_from_ios_sensorlog package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
