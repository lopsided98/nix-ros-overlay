
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-openzen-sensor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/lp-research/openzen_sensor-release/archive/release/noetic/openzen_sensor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d2a6931e13d2e6ddb0623a71397a4e9408335ec109831f0aeff988b46414f85c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs std-srvs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for LP-Research OpenZen'';
    license = with lib.licenses; [ mit "BSL-1.0" lgpl3Only bsdOriginal ];
  };
}
