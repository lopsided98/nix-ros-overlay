
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, pluginlib, catkin, roslint, costmap-2d, roscpp, angles, rospy }:
buildRosPackage {
  pname = "ros-melodic-range-sensor-layer";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/range_sensor_layer/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "8e94872327b9579a9ca65c6aefe659bfffb7544a61ddca67580e8707af85d2e7";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure pluginlib costmap-2d roscpp angles rospy ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure pluginlib costmap-2d roscpp angles rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation Layer for Range sensors like sonar and IR'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
