
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-geometry";
  version = "1.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/image_geometry/1.16.1-1.tar.gz";
    name = "1.16.1-1.tar.gz";
    sha256 = "36c3f0c717a2648c81f8916c7f84565ce319e4c0c9161f14b6c01c9df9b32fa9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ opencv sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
