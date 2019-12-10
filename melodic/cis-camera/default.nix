
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, dynamic-reconfigure, image-transport, jsk-rviz-plugins, libuvc, nodelet, pcl-ros, pluginlib, rgbd-launch, roscpp, roslaunch, rostest, rqt-reconfigure, rviz, sensor-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-cis-camera";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/cis_camera-release/archive/release/melodic/cis_camera/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "23afb3a9a394bc89c389da55add4a57c7a4e0731e7530f7dd078a014b577e0f6";
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
