
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslaunch, rostest, sensor-msgs, std-msgs, std-srvs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-openzen-sensor";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/lp-research/openzen_sensor-release/archive/release/melodic/openzen_sensor/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "9d07fc38d2fc20c47f7359a03771201cfb511af5494ea8112b16f6bf5a83bffb";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs std-srvs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS driver for LP-Research OpenZen'';
    license = with lib.licenses; [ mit boost lgpl2 bsdOriginal ];
  };
}
