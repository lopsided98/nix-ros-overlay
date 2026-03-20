
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_catkin, _unresolved_gps_common, _unresolved_nodelet, _unresolved_rosbag, _unresolved_roscpp, _unresolved_rostest, boost, nav-msgs, nmea-msgs, novatel-oem7-msgs, sensor-msgs, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-novatel-oem7-driver";
  version = "4.3.0-r2";

  src = fetchurl {
    url = "https://github.com/novatel-gbp/novatel_oem7_driver-release/archive/release/kilted/novatel_oem7_driver/4.3.0-2.tar.gz";
    name = "4.3.0-2.tar.gz";
    sha256 = "f15ee537f8b36ef976c7c34e24c5b46d00b844893e8b30618f8487e3299f2df3";
  };

  buildType = "catkin";
  buildInputs = [ _unresolved_catkin ];
  checkInputs = [ _unresolved_rosbag _unresolved_rostest ];
  propagatedBuildInputs = [ _unresolved_gps_common _unresolved_nodelet _unresolved_roscpp boost nav-msgs nmea-msgs novatel-oem7-msgs sensor-msgs tf2-geometry-msgs ];
  nativeBuildInputs = [ _unresolved_catkin ];

  meta = {
    description = "NovAtel Oem7 ROS Driver";
    license = with lib.licenses; [ mit ];
  };
}
