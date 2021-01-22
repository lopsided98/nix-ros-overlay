
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, dynamic-reconfigure, geometry-msgs, humanoid-nav-msgs, naoqi-bridge-msgs, nav-msgs, roslaunch, rospy, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-driver-py";
  version = "0.5.5";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_bridge-release/archive/release/kinetic/naoqi_driver_py/0.5.5-0.tar.gz";
    name = "0.5.5-0.tar.gz";
    sha256 = "b783008967efa45958e1b210bf70c2a3fa4f890ef39ed636a25740bd206988f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib dynamic-reconfigure geometry-msgs humanoid-nav-msgs naoqi-bridge-msgs nav-msgs roslaunch rospy sensor-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Python implementation of the driver package for the Naoqi robot, providing access to walking commands,
      joint angles, and sensor data (odometry, IMU, ...). The
      most-current version is compatible with the Nao API version 1.12 or newer,
      connecting to a real or simulated Nao by wrapping Aldebaran Robotics'
      NaoQI API in Python. This requires the &quot;lib&quot; directory of the Aldebaran
      Python SDK to be in your PYTHONPATH environment variable.

      Note that cameras drivers are provided in a separate package (naoqi_sensors_py).
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
