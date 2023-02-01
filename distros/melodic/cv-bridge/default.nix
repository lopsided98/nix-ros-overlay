
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, opencv, python, pythonPackages, rosconsole, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-cv-bridge";
  version = "1.13.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "vision_opencv-release";
        rev = "release/melodic/cv_bridge/1.13.1-1";
        sha256 = "sha256-b4OAdu9KXs5cynJt8w7pOyDs1JYI1P3UphcKGRoakfU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ pythonPackages.numpy rostest ];
  propagatedBuildInputs = [ boost opencv python pythonPackages.opencv3 rosconsole sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
