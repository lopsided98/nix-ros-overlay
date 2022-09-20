
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, dynamic-reconfigure, effort-controllers, rm-common, roscpp, tf2-eigen, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-gimbal-controllers";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_gimbal_controllers/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "f4880a42ef60e663d7a8dc33a035fe30ea83cec13a99dcaa05d2c9fb85123bcc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles dynamic-reconfigure effort-controllers rm-common roscpp tf2-eigen tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
