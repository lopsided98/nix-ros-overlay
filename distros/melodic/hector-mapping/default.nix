
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, laser-geometry, message-filters, message-generation, message-runtime, nav-msgs, roscpp, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-mapping";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_mapping/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "fc1af9c95dcce587f5d5f72025ccf8b487dba26ad2d6b1158a53b5de79d5b1d8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost eigen laser-geometry message-filters message-runtime nav-msgs roscpp tf tf-conversions visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_mapping is a SLAM approach that can be used without odometry as well as on platforms that exhibit roll/pitch motion (of the sensor, the platform or both).
    It leverages the high update rate of modern LIDAR systems like the Hokuyo UTM-30LX and provides 2D pose estimates at scan rate of the sensors (40Hz for the UTM-30LX).
    While the system does not provide explicit loop closing ability, it is sufficiently accurate for many real world scenarios. The system has successfully been used on
    Unmanned Ground Robots, Unmanned Surface Vehicles, Handheld Mapping Devices and logged data from quadrotor UAVs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
