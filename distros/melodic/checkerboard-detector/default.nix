
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, image-geometry, image-publisher, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, message-filters, posedetection-msgs, rosconsole, roscpp, rostest, sensor-msgs, tf, tf2 }:
buildRosPackage {
  pname = "ros-melodic-checkerboard-detector";
  version = "1.2.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_recognition-release";
        rev = "release/melodic/checkerboard_detector/1.2.15-1";
        sha256 = "sha256-iX6S82etL1rz97KfvrS8FJhqcF4VEEPY4NiXZRWNUUA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ jsk-tools jsk-topic-tools rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure dynamic-tf-publisher eigen-conversions image-geometry image-publisher jsk-recognition-msgs message-filters posedetection-msgs rosconsole roscpp sensor-msgs tf tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Uses opencv to find checkboards and compute their 6D poses with respect to the image. Requires the image to be calibrated.<br/>
    Parameters:<br/>
    <ul>
     <li>display - show the checkerboard detection</li>
     <li>rect%d_size_x - size of checker in x direction</li>
     <li>rect%d_size_y - size of checker in y direction</li>
     <li>grid%d_size_x - number of checkers in x direction</li>
     <li>grid%d_size_y - number of checkers in y direction</li>
    </ul><br/>    
    There can be more than one grid%d declared, the numbers should grow consecutively starting at 0.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
