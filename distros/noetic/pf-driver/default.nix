
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curlpp, dynamic-reconfigure, jsoncpp, laser-geometry, message-generation, message-runtime, pcl, pcl-conversions, pcl-ros, pf-description, roscpp, roscpp-serialization, roslint, rosunit, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-pf-driver";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/PepperlFuchs/pf_lidar_ros_driver-release/archive/release/noetic/pf_driver/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5cf437f193925c44f47c36c345ad605e4e6161d016ff9778ed89c8f21a5dcae0";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation roslint ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ curlpp dynamic-reconfigure jsoncpp laser-geometry message-runtime pcl pcl-conversions pcl-ros pf-description roscpp roscpp-serialization rviz sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The Pepperl+Fuchs LiDAR package'';
    license = with lib.licenses; [ asl20 ];
  };
}
