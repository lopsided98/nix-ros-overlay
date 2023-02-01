
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-ouster-driver";
  version = "0.1.7";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CPFL";
        repo = "ouster-release";
        rev = "release/melodic/ouster_driver/0.1.7-0";
        sha256 = "sha256-sEN74pGThYheFj5kg2lCdPHDAjuAYKdScgZi6Le6oa8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''OS1 ROS client'';
    license = with lib.licenses; [ asl20 ];
  };
}
