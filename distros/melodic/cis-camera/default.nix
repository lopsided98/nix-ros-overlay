
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, jsk-rviz-plugins, libuvc, nodelet, pcl-ros, pluginlib, rgbd-launch, roscpp, roslaunch, roslint, rostest, rqt-reconfigure, rviz, sensor-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-cis-camera";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/cis_camera-release/archive/release/melodic/cis_camera/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "5f4a44afefb77a6887cd8531b450cf19f18d5e9159d2a3b4a1ad272c6b678841";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge dynamic-reconfigure image-transport jsk-rviz-plugins libuvc nodelet pcl-ros pluginlib rgbd-launch roscpp rqt-reconfigure rviz sensor-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cis_camera package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
