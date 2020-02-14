
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-cvb-camera-driver";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/gleichaufjo/ros_cvb_camera_driver_release/archive/release/kinetic/ros_cvb_camera_driver/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "87079d005ec32d021929e2a66b8e20b56b8893d654bc7445362ed9e754729250";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ camera-info-manager roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_cvb_camera_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
