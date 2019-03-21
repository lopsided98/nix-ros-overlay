
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, sensor-msgs, cv-bridge, posedetection-msgs, catkin, message-filters, image-geometry, roscpp, dynamic-tf-publisher, tf2, jsk-recognition-msgs, dynamic-reconfigure, eigen-conversions, tf }:
buildRosPackage {
  pname = "ros-melodic-checkerboard-detector";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/checkerboard_detector/1.2.10-0.tar.gz;
    sha256 = "ceea72257d2d72b4e132c9dce6d24a976081fff72abba0b7d607f9803b1bd8ad";
  };

  propagatedBuildInputs = [ rosconsole sensor-msgs cv-bridge message-filters posedetection-msgs roscpp image-geometry tf2 dynamic-tf-publisher jsk-recognition-msgs dynamic-reconfigure eigen-conversions tf ];
  nativeBuildInputs = [ rosconsole sensor-msgs cv-bridge message-filters posedetection-msgs roscpp image-geometry catkin tf2 jsk-recognition-msgs dynamic-reconfigure eigen-conversions tf ];

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
    #license = lib.licenses.BSD;
  };
}
