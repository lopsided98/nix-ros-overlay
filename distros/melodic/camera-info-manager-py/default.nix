
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, rostest, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-camera-info-manager-py";
  version = "0.2.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "camera_info_manager_py-release";
        rev = "release/melodic/camera_info_manager_py/0.2.3-1";
        sha256 = "sha256-H51Vb8gRMdJHThOQz8WW5sWbo8W2ABnu46tWJi1KR9U=";
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
