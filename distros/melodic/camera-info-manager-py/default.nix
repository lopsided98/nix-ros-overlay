
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-camera-info-manager-py";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/camera_info_manager_py-release/archive/release/melodic/camera_info_manager_py/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "6087f6e31da07de3fc73755de6dac341afdb28eaf48e375cd0519addefe2dce1";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
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
