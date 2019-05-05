
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin, urdfdom, rostest, urdf, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-joint-limits-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/joint_limits_interface/0.13.3-0.tar.gz;
    sha256 = "1d741c185c5fe56a8a9abd63ea09dff547d658379e6893acee39c5b188aeab37";
  };

  buildInputs = [ hardware-interface roscpp urdf urdfdom ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ hardware-interface roscpp urdf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
