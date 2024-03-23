
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, gps-common, nav-msgs, nmea-msgs, nodelet, novatel-oem7-msgs, rosbag, roscpp, rostest, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-novatel-oem7-driver";
  version = "4.3.0-r5";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/noetic/novatel_oem7_driver/4.3.0-5.tar.gz";
    name = "4.3.0-5.tar.gz";
    sha256 = "48efcf44d44fbf2180b71540df4a19d5c281b609338f24d1aceb73891acde982";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ boost gps-common nav-msgs nmea-msgs nodelet novatel-oem7-msgs roscpp sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "NovAtel Oem7 ROS Driver";
    license = with lib.licenses; [ mit ];
  };
}
