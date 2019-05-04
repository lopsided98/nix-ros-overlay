
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, gmapping, frontier-exploration, map-server, amcl, base-local-planner, roch-safety-controller, navfn, sensor-msgs, catkin, move-base, roscpp, dwa-local-planner, nodelet, yocs-cmd-vel-mux, roch-bringup, tf }:
buildRosPackage {
  pname = "ros-kinetic-roch-navigation";
  version = "2.0.12";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_navigation/2.0.12-0.tar.gz;
    sha256 = "31c11c2052c6f4a79055c484f992ee293031477f46ee34f6cbfc41338a71f792";
  };

  buildInputs = [ roslaunch tf sensor-msgs roscpp ];
  propagatedBuildInputs = [ gmapping frontier-exploration map-server amcl base-local-planner navfn roch-safety-controller tf sensor-msgs move-base dwa-local-planner nodelet yocs-cmd-vel-mux roch-bringup roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the SawYer Roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
