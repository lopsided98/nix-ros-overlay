
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-geometry";
  version = "1.13.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vision_opencv-release/archive/release/melodic/image_geometry/1.13.0-0.tar.gz";
    name = "1.13.0-0.tar.gz";
    sha256 = "f1f06fc227662b34743a3391431538326fa3c8833c7ab47b6b1eeeeb631082e2";
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
