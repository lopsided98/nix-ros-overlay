
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, sensor-msgs, catkin, rostest, rviz-imu-plugin, rviz, rqt-plot, roslaunch, roscpp, imu-filter-madgwick, xacro }:
buildRosPackage {
  pname = "ros-kinetic-adi-driver";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/tork-a/adi_driver-release/archive/release/kinetic/adi_driver/1.0.3-0.tar.gz;
    sha256 = "5736b91fb343b049bddfad0035c45201a92d2bc73d70b49c2d4813913ab694a0";
  };

  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ rviz-imu-plugin std-srvs rviz rqt-plot sensor-msgs roscpp imu-filter-madgwick xacro ];
  nativeBuildInputs = [ std-srvs catkin roslint sensor-msgs roscpp ];

  meta = {
    description = ''The adi_driver package'';
    #license = lib.licenses.BSD;
  };
}
