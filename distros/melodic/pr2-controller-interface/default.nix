
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pr2-mechanism-model, roscpp }:
buildRosPackage {
  pname = "ros-melodic-pr2-controller-interface";
  version = "1.8.21-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/melodic/pr2_controller_interface/1.8.21-1.tar.gz";
    name = "1.8.21-1.tar.gz";
    sha256 = "cd8ca8d577d00d71e7dd1a4bd3b922988892b95e14e2c5e49a00e5f2326fad83";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
