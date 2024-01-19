
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, laser-geometry, message-filters, message-generation, message-runtime, nav-msgs, roscpp, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-mapping";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_mapping/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "ecceebe2a85de049572d9362d99760a92a22acbfedf55e27f219fb590c3b5a75";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost eigen laser-geometry message-filters message-runtime nav-msgs roscpp tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_mapping is a SLAM approach that can be used without odometry as well as on platforms that exhibit roll/pitch motion (of the sensor, the platform or both).
    It leverages the high update rate of modern LIDAR systems like the Hokuyo UTM-30LX and provides 2D pose estimates at scan rate of the sensors (40Hz for the UTM-30LX).
    While the system does not provide explicit loop closing ability, it is sufficiently accurate for many real world scenarios. The system has successfully been used on
    Unmanned Ground Robots, Unmanned Surface Vehicles, Handheld Mapping Devices and logged data from quadrotor UAVs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
