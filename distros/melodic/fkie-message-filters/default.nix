
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fkie-message-filters";
  version = "1.1.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fkie-release";
        repo = "message_filters-release";
        rev = "release/melodic/fkie_message_filters/1.1.2-1";
        sha256 = "sha256-QFSEVgbep32zGMY9OffccZ80J7SEc6n0wrni+Hc6/SY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit std-msgs ];
  propagatedBuildInputs = [ image-transport roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS message filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
