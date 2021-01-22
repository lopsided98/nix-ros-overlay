
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pr2-mechanism-model, roscpp }:
buildRosPackage {
  pname = "ros-noetic-pr2-controller-interface";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/noetic/pr2_controller_interface/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "da37c9ff94757ceed49d33cd7005f40aa70423360bd56ef165edef1d413bd3dd";
  };

  buildType = "catkin";
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
