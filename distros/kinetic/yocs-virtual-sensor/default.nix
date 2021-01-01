
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rospy, rospy-message-converter, sensor-msgs, tf, visualization-msgs, yocs-math-toolkit, yocs-msgs }:
buildRosPackage {
  pname = "ros-kinetic-yocs-virtual-sensor";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_virtual_sensor/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "988276fb89f50d0236f4008d3db198704f56c0788f6065f7c7077cd12442e896";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs roscpp rospy rospy-message-converter sensor-msgs tf visualization-msgs yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual sensor that uses semantic map information to &quot;see&quot; obstacles undetectable by robot sensors.
      
      Current implementation cannot read obstacles from YAML files. Until this feature gets implemented, we
      use auxiliary scripts to read and publish files' content. Data directory contains some example files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
