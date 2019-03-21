
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, yocs-math-toolkit, yocs-msgs, roscpp, rospy-message-converter, visualization-msgs, rospy, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-virtual-sensor";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_virtual_sensor/0.8.2-0.tar.gz;
    sha256 = "988276fb89f50d0236f4008d3db198704f56c0788f6065f7c7077cd12442e896";
  };

  propagatedBuildInputs = [ tf sensor-msgs yocs-math-toolkit yocs-msgs roscpp rospy-message-converter rospy visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin tf sensor-msgs roscpp yocs-math-toolkit yocs-msgs geometry-msgs ];

  meta = {
    description = ''Virtual sensor that uses semantic map information to &quot;see&quot; obstacles undetectable by robot sensors.
      
      Current implementation cannot read obstacles from YAML files. Until this feature gets implemented, we
      use auxiliary scripts to read and publish files' content. Data directory contains some example files.'';
    #license = lib.licenses.BSD;
  };
}
