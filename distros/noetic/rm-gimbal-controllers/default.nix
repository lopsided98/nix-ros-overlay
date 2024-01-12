
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, controller-interface, dynamic-reconfigure, effort-controllers, rm-common, roscpp, tf2-eigen, tf2-geometry-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rm-gimbal-controllers";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/rm_gimbal_controllers/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "593e5c54933fe7d67b8c1237a69902dda4a1e3df8baaccda28810cbc949a1832";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles controller-interface dynamic-reconfigure effort-controllers rm-common roscpp tf2-eigen tf2-geometry-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RoboMaster standard robot Gimbal controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
