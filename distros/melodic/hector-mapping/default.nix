
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, eigen, laser-geometry, message-filters, message-generation, message-runtime, nav-msgs, roscpp, tf, tf-conversions, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-hector-mapping";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_slam-release";
        rev = "release/melodic/hector_mapping/0.4.1-1";
        sha256 = "sha256-X7UuT4TuItVzZ7wpZ+qBic3dcteesIHE7fN8C0kurP4=";
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
