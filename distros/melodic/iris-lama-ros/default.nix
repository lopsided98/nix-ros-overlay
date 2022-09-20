
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, iris-lama, message-filters, nav-msgs, rosbag, rosbag-storage, roscpp, std-srvs, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-iris-lama-ros";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama_ros-release/archive/release/melodic/iris_lama_ros/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2107bf075df0ee097ce884a08d919b5bf659d293ac4b5409025f8d3931655b2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs iris-lama message-filters nav-msgs rosbag rosbag-storage roscpp std-srvs tf tf-conversions visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS package of IRIS Localization and Mapping (LaMa).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
