
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotnik-msgs, geometry-msgs, tf, tf2, nav-msgs, rostest, sensor-msgs, tf2-geometry-msgs, geographic-msgs, rosbag, tf2-ros, message-filters, std-msgs, std-srvs, catkin, mavros-msgs, robot-localization, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-localization";
  version = "1.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_localization/1.1.2-0.tar.gz";
    name = "1.1.2-0.tar.gz";
    sha256 = "dfcaf521b442fb5fa19b58084891074b930cf09041e3d894337904f169b4c818";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs robotnik-msgs geometry-msgs message-filters std-msgs std-srvs tf roscpp tf2-geometry-msgs mavros-msgs geographic-msgs robot-localization tf2 nav-msgs tf2-ros ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ sensor-msgs robotnik-msgs geometry-msgs message-filters std-msgs std-srvs tf roscpp tf2-geometry-msgs mavros-msgs geographic-msgs robot-localization tf2 message-runtime nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The summit_xl_localization package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
