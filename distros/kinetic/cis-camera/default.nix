
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, jsk-rviz-plugins, libuvc, nodelet, pcl-ros, pluginlib, rgbd-launch, roscpp, roslaunch, roslint, rostest, rqt-reconfigure, rviz, sensor-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-kinetic-cis-camera";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/cis_camera-release/archive/release/kinetic/cis_camera/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "bd09d20ddb70a831db455e223282fc0e8f2221fbb69f74b7c43016460725dac4";
  };

  buildType = "catkin";
  buildInputs = [ roslint rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport jsk-rviz-plugins libuvc nodelet pcl-ros pluginlib rgbd-launch roscpp rqt-reconfigure rviz sensor-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cis_camera package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
