
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-geometry";
  version = "1.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/noetic/image_geometry/1.16.2-1.tar.gz";
    name = "1.16.2-1.tar.gz";
    sha256 = "634b35652d7dd4664d03b4e095502946350a1038b2171be6e739d1efdc1e22d8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ opencv opencv.cxxdev sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
