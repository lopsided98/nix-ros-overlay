
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, roslint, sensor-msgs, catkin, rospy, angles, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-range-sensor-layer";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/wu-robotics/navigation_layers_release/archive/release/melodic/range_sensor_layer/0.5.0-0.tar.gz;
    sha256 = "8e94872327b9579a9ca65c6aefe659bfffb7544a61ddca67580e8707af85d2e7";
  };

  buildInputs = [ costmap-2d pluginlib sensor-msgs rospy angles dynamic-reconfigure roscpp geometry-msgs ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ costmap-2d pluginlib sensor-msgs rospy angles dynamic-reconfigure roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation Layer for Range sensors like sonar and IR'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
