
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, nodelet, roscpp, roslaunch, roslint, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-depth-image-publisher";
  version = "1.2.19-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/depth_image_publisher/1.2.19-1.tar.gz";
    name = "1.2.19-1.tar.gz";
    sha256 = "64475b5b0b79448aabac4508586de7adab6b3bfbc480bf5af66128f3ca6d61b9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint rostest ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      Contains a node publish an image stream from single image file
      or avi motion file.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
