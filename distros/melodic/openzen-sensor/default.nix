
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-openzen-sensor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/lp-research/openzen_sensor-release/archive/release/melodic/openzen_sensor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "40f8a14c1626135d573751bb79540c429028d462378b39a691d2dcd7e6daec94";
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
