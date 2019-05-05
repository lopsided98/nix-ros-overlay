
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roscpp, catkin, pr2-mechanism-model, controller-interface }:
buildRosPackage {
  pname = "ros-lunar-pr2-controller-interface";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/pr2_controller_interface/1.8.18-0.tar.gz;
    sha256 = "3f47e9fa66467ea60b23265a870a2508128a62d74f26370a4d458c0416dc2dbd";
  };

  buildInputs = [ controller-interface pr2-mechanism-model roscpp ];
  propagatedBuildInputs = [ controller-interface pr2-mechanism-model roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package specifies the interface to a realtime controller. A
   controller that implements this interface can be executed by the
    <a href="http://www.ros.org/wiki/pr2_controller_manager">controller
  manager</a> in the real time control loop. The package basically
  contains the C++ controller base class that all controllers need to
  inherit from.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
