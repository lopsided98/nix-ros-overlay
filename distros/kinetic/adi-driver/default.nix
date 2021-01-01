
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-filter-madgwick, roscpp, roslaunch, roslint, rostest, rqt-plot, rviz, rviz-imu-plugin, sensor-msgs, std-srvs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-adi-driver";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/tork-a/adi_driver-release/archive/release/kinetic/adi_driver/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "5736b91fb343b049bddfad0035c45201a92d2bc73d70b49c2d4813913ab694a0";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ imu-filter-madgwick roscpp rqt-plot rviz rviz-imu-plugin sensor-msgs std-srvs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The adi_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
