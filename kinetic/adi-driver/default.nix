
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, xacro, rqt-plot, std-srvs, catkin, rviz-imu-plugin, roslint, roscpp, rviz, imu-filter-madgwick, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-adi-driver";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/tork-a/adi_driver-release/archive/release/kinetic/adi_driver/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "5736b91fb343b049bddfad0035c45201a92d2bc73d70b49c2d4813913ab694a0";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-srvs roscpp roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ sensor-msgs xacro rqt-plot imu-filter-madgwick std-srvs rviz-imu-plugin rviz roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The adi_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
