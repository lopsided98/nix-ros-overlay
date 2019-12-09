
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, xacro, rqt-plot, std-srvs, catkin, rviz-imu-plugin, roslint, roscpp, rviz, imu-filter-madgwick, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-adi-driver";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/tork-a/adi_driver-release/archive/release/melodic/adi_driver/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "6f2b565c98396653f9364c57fddafa0ca244781c27edd5b5467502fa77dafc9a";
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
