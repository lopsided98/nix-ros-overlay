
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, image-geometry, jsk-recognition-msgs, message-filters, posedetection-msgs, rosconsole, roscpp, sensor-msgs, tf, tf2 }:
buildRosPackage {
  pname = "ros-kinetic-checkerboard-detector";
  version = "1.2.9";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/checkerboard_detector/1.2.9-0.tar.gz";
    name = "1.2.9-0.tar.gz";
    sha256 = "c8097006d40dad1bbb6e1531c6d3aa67947b20c6083c1fa1990ae1deb2d2a9cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure dynamic-tf-publisher eigen-conversions image-geometry jsk-recognition-msgs message-filters posedetection-msgs rosconsole roscpp sensor-msgs tf tf2 ];
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
