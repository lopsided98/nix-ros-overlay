
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, roslint, sensor-msgs, catkin, rostest, rviz-imu-plugin, rviz, rqt-plot, roslaunch, roscpp, imu-filter-madgwick, xacro }:
buildRosPackage {
  pname = "ros-melodic-adi-driver";
  version = "1.0.3";

  src = fetchurl {
    url = https://github.com/tork-a/adi_driver-release/archive/release/melodic/adi_driver/1.0.3-0.tar.gz;
    sha256 = "6f2b565c98396653f9364c57fddafa0ca244781c27edd5b5467502fa77dafc9a";
  };

  buildInputs = [ std-srvs sensor-msgs roscpp roslint ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ rviz-imu-plugin std-srvs rviz rqt-plot sensor-msgs roscpp imu-filter-madgwick xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The adi_driver package'';
    #license = lib.licenses.BSD;
  };
}
