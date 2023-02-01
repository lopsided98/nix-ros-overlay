
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libpcap, libyamlcpp, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rslidar-sdk";
  version = "1.3.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "nobleo";
        repo = "rslidar_sdk-release";
        rev = "release/noetic/rslidar_sdk/1.3.2-1";
        sha256 = "sha256-yGHvc+4i7wsj0xeGZogVgtx8WabkvbAba8FP36REx4s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libpcap libyamlcpp pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rslidar_sdk package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
