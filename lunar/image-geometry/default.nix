
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, opencv3 }:
buildRosPackage {
  pname = "ros-lunar-image-geometry";
  version = "1.12.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/vision_opencv-release/archive/release/lunar/image_geometry/1.12.8-0.tar.gz;
    sha256 = "9451297ed625351d58729b921038bf7685e10f8ff654069b68d34b74a68acc9f";
  };

  buildInputs = [ sensor-msgs opencv3 ];
  propagatedBuildInputs = [ sensor-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    #license = lib.licenses.BSD;
  };
}
