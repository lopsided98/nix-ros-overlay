
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, polled-camera, rosgraph-msgs, rospy, tf, gazebo-msgs, geometry-msgs, image-transport, message-generation, message-runtime, angles, std-srvs, camera-info-manager, trajectory-msgs, catkin, tf2-ros, gazebo-dev, nav-msgs, urdf, std-msgs, roscpp, nodelet, sensor-msgs, diagnostic-updater, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-plugins";
  version = "2.5.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_plugins/2.5.19-1.tar.gz";
    name = "2.5.19-1.tar.gz";
    sha256 = "4e5ed837dba669577700f66f5ba281e46c1d9143fe1cc17f65d25b5d425b0f60";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole cv-bridge polled-camera rosgraph-msgs rospy tf gazebo-msgs geometry-msgs image-transport message-generation angles std-srvs camera-info-manager trajectory-msgs tf2-ros gazebo-dev nav-msgs urdf std-msgs roscpp nodelet sensor-msgs diagnostic-updater dynamic-reconfigure ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rosconsole cv-bridge polled-camera rosgraph-msgs rospy tf gazebo-msgs geometry-msgs image-transport message-runtime angles std-srvs camera-info-manager trajectory-msgs tf2-ros gazebo-dev nav-msgs urdf std-msgs roscpp nodelet sensor-msgs diagnostic-updater dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
