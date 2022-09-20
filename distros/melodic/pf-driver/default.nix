
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, curlpp, dynamic-reconfigure, jsoncpp, laser-geometry, message-generation, message-runtime, pcl, pcl-conversions, pcl-ros, pf-description, roscpp, roscpp-serialization, roslint, rosunit, rviz, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-pf-driver";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/PepperlFuchs/pf_lidar_ros_driver-release/archive/release/melodic/pf_driver/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "a852a67342f0e1f46a313a41a954b1540f8b8af833b23672c3ba80a0bf195706";
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
