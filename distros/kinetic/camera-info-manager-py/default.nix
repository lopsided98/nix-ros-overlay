
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-camera-info-manager-py";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/camera_info_manager_py-release/archive/release/kinetic/camera_info_manager_py/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "3f698bd22b69737a57ef35e5a26c798defd431511e590b0e0ffeb315397acba6";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.pyyaml pythonPackages.rospkg rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python interface for camera calibration information.

    This ROS package provides a CameraInfo interface for Python camera
    drivers similar to the C++ camera_info_manager package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
