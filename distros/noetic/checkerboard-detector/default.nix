
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, image-geometry, image-publisher, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, message-filters, posedetection-msgs, rosconsole, roscpp, rostest, sensor-msgs, tf, tf2 }:
buildRosPackage {
  pname = "ros-noetic-checkerboard-detector";
  version = "1.2.17-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/checkerboard_detector/1.2.17-2.tar.gz";
    name = "1.2.17-2.tar.gz";
    sha256 = "da9aa5454077cbaf3cfefb58e1ac6b98c20c89d4c70e2bc2534087d886c059f0";
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
