
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-filters }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-follow-filter";
  version = "1.1.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3_applications-release";
        rev = "release/melodic/turtlebot3_follow_filter/1.1.0-0";
        sha256 = "sha256-KiXrZZYTZ6nXosxiPUkn0CCBNJI5/1KQUwMkwwJmQS0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlebot3_follow_filter package using laser_filters for turtlebot3_follower package'';
    license = with lib.licenses; [ asl20 ];
  };
}
