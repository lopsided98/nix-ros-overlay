
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, imu-filter-madgwick, roscpp, roslaunch, roslint, rostest, rqt-plot, rviz, rviz-imu-plugin, sensor-msgs, std-srvs, xacro }:
buildRosPackage {
  pname = "ros-melodic-adi-driver";
  version = "1.0.3";

  src = fetchurl {
    url = "https://github.com/tork-a/adi_driver-release/archive/release/melodic/adi_driver/1.0.3-0.tar.gz";
    name = "1.0.3-0.tar.gz";
    sha256 = "6f2b565c98396653f9364c57fddafa0ca244781c27edd5b5467502fa77dafc9a";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ imu-filter-madgwick roscpp rqt-plot rviz rviz-imu-plugin sensor-msgs std-srvs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The adi_driver package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
