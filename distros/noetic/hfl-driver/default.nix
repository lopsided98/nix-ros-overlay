
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, camera-info-manager, catkin, cv-bridge, diagnostic-updater, dynamic-reconfigure, geometry-msgs, image-geometry, image-transport, message-runtime, nodelet, roscpp, roslint, rospy, rostest, sensor-msgs, std-msgs, tf, tf2, tf2-geometry-msgs, udp-com, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-hfl-driver";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/flynneva/hfl_driver-release/archive/release/noetic/hfl_driver/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "5d6effed58de83e6d5301c53bdf49d4ffbf926f5d0553b3e3e3a6e0fba73ff18";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ angles camera-info-manager cv-bridge diagnostic-updater dynamic-reconfigure geometry-msgs image-geometry image-transport message-runtime nodelet roscpp rospy sensor-msgs std-msgs tf tf2 tf2-geometry-msgs udp-com visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hfl package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
