
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-openzen-sensor";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/lp-research/openzen_sensor-release/archive/release/noetic/openzen_sensor/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "7d6e5ad201246d3469bf5834928532d849d3d0934e6569759fadb9e60ffb99d1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs std-srvs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for LP-Research inertial measurement units and satellite navigation senors'';
    license = with lib.licenses; [ mit "BSL-1.0" lgpl3Only bsdOriginal ];
  };
}
