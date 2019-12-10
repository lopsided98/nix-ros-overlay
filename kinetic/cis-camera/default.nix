
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, jsk-rviz-plugins, libuvc, nodelet, pcl-ros, pluginlib, rgbd-launch, roscpp, roslaunch, rostest, rqt-reconfigure, rviz, sensor-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-cis-camera";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/cis_camera-release/archive/release/kinetic/cis_camera/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "7f4a3e25d151854da023a7a3615342d5f3b0353d66d40abd77cf03b3f3246691";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport jsk-rviz-plugins libuvc nodelet pcl-ros pluginlib rgbd-launch roscpp rqt-reconfigure rviz sensor-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cis_camera package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
