
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, rviz }:
buildRosPackage {
  pname = "ros-noetic-diffbot-description";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_description/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "32719217c0f5e92134fe65d59e595ab4bf653ff6b93a1671cf10ba4f7811fca1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_description package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
