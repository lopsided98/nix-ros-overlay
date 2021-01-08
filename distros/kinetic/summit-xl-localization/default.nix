
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, mavros-msgs, message-filters, message-runtime, nav-msgs, robot-localization, robotnik-msgs, rosbag, roscpp, rostest, sensor-msgs, std-msgs, std-srvs, tf, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-localization";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_localization/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "dfcaf521b442fb5fa19b58084891074b930cf09041e3d894337904f169b4c818";
  };

  buildType = "catkin";
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs mavros-msgs message-filters message-runtime nav-msgs robot-localization robotnik-msgs roscpp sensor-msgs std-msgs std-srvs tf tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_xl_localization package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
