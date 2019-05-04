
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, pythonPackages, rostest, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-camera-info-manager-py";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/camera_info_manager_py-release/archive/release/kinetic/camera_info_manager_py/0.2.3-0.tar.gz;
    sha256 = "3f698bd22b69737a57ef35e5a26c798defd431511e590b0e0ffeb315397acba6";
  };

  buildInputs = [ rostest sensor-msgs rospy ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.rospkg sensor-msgs pythonPackages.pyyaml rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python interface for camera calibration information.

    This ROS package provides a CameraInfo interface for Python camera
    drivers similar to the C++ camera_info_manager package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
