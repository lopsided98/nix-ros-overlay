
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, rosbash, catkin, rosservice, rostest, controller-interface, rosnode }:
buildRosPackage {
  pname = "ros-lunar-controller-manager-tests";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/controller_manager_tests/0.13.3-0.tar.gz;
    sha256 = "1a21eefb19d49e156b9447332cf8cb9e46de88eef1516db79c89981e14bcf4f7";
  };

  buildInputs = [ controller-manager controller-interface ];
  checkInputs = [ rostest rosbash rosservice rosnode ];
  propagatedBuildInputs = [ controller-manager controller-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''controller_manager_tests'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
