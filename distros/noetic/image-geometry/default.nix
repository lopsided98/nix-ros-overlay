
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, opencv3, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-geometry";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/image_geometry/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "c1876437e6591c63987f60a88b94be33e615636475258dd843eb139d3258dc62";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ opencv3 sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
