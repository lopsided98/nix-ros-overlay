
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, rqt-gui, catkin }:
buildRosPackage {
  pname = "ros-lunar-rqt-controller-manager";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/rqt_controller_manager/0.13.3-0.tar.gz;
    sha256 = "2fe9357692904ebd0673cd1986babe50f762adfd414b38f150bd494dca274ba4";
  };

  propagatedBuildInputs = [ controller-manager rqt-gui ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_controller_manager package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
