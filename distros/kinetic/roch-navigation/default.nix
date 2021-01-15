
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, frontier-exploration, gmapping, map-server, move-base, navfn, nodelet, roch-bringup, roch-safety-controller, roscpp, roslaunch, sensor-msgs, tf, yocs-cmd-vel-mux }:
buildRosPackage {
  pname = "ros-kinetic-roch-navigation";
  version = "2.0.12";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_navigation/2.0.12-0.tar.gz";
    name = "2.0.12-0.tar.gz";
    sha256 = "31c11c2052c6f4a79055c484f992ee293031477f46ee34f6cbfc41338a71f792";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner frontier-exploration gmapping map-server move-base navfn nodelet roch-bringup roch-safety-controller roscpp sensor-msgs tf yocs-cmd-vel-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the SawYer Roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
