
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, yocs-math-toolkit, tf, catkin, rospy-message-converter, visualization-msgs, roscpp, yocs-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-yocs-virtual-sensor";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_virtual_sensor/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "4505ba05080e444b2000591f1628a4e204e1efb9e9e45be6a8ccb19506193631";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit tf roscpp yocs-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit tf rospy-message-converter visualization-msgs roscpp yocs-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Virtual sensor that uses semantic map information to &quot;see&quot; obstacles undetectable by robot sensors.
      
      Current implementation cannot read obstacles from YAML files. Until this feature gets implemented, we
      use auxiliary scripts to read and publish files' content. Data directory contains some example files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
